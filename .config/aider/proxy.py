from flask import Flask, request, jsonify, Response
import requests
import threading
import logging
import json

app = Flask(__name__)

# Configure logging
logging.basicConfig(level=logging.INFO)

# Target server configuration
TARGET_SERVER = 'http://localhost:8080'

# Modify this function to add max_tokens to the request body
def modify_request_body(original_body):
    try:
        data = json.loads(original_body)
        # Add or overwrite the max_tokens field
        data['max_tokens'] = 8192
        modified_body = json.dumps(data)
        return modified_body
    except json.JSONDecodeError:
        logging.error("Failed to decode JSON from the request body.")
        return original_body

@app.route('/<path:path>', methods=['GET', 'POST', 'PUT', 'DELETE', 'PATCH', 'OPTIONS'])
def proxy(path):
    # Construct the full URL to the target server
    url = f"{TARGET_SERVER}/{path}"

    # Log the incoming request
    logging.info(f"Incoming request to: {request.method} {request.url}")

    # Headers to send to the target server
    headers = {key: value for key, value in request.headers if key != 'Host'}

    # Get the request data
    if request.data:
        # Modify the request body to add max_tokens
        modified_data = modify_request_body(request.data)
    else:
        modified_data = None

    # Send the request to the target server
    response = requests.request(
        method=request.method,
        url=url,
        headers=headers,
        data=modified_data,
        params=request.args,
        stream=True
    )

    # Prepare the response to relay back to the client
    excluded_headers = ['content-encoding', 'content-length', 'transfer-encoding', 'connection']
    headers = [(name, value) for (name, value) in response.raw.headers.items()
               if name.lower() not in excluded_headers]

    def generate():
        for line in response.iter_lines(decode_unicode=True):
            # Each line corresponds to a complete SSE event
            if line.startswith('data: '):
                data = line[len('data: '):]
                if data == '[DONE]':
                    yield f'data: {data}\n\n'
                else:
                    try:
                        # Parse the JSON data
                        json_data = json.loads(data)
                        # Modify the finish_reason if it is 'length'
                        choices = json_data.get('choices', [])
                        for choice in choices:
                            if choice.get('finish_reason') == 'length':
                                choice['finish_reason'] = 'stop'
                        # Serialize back to JSON
                        modified_data = json.dumps(json_data)
                        # Yield the modified event
                        yield f'data: {modified_data}\n\n'
                    except json.JSONDecodeError:
                        # If parsing fails, yield the line as is
                        yield line + '\n\n'
            else:
                # Yield non-data lines as is
                yield line + '\n\n'

    return Response(generate(), status=response.status_code, headers=headers)

if __name__ == '__main__':
    # Run the proxy server on port 8090
    app.run(host='0.0.0.0', port=8090, threaded=True)
