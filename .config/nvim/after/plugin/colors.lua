require("catppuccin").setup({
  transparent_background = true,
})

function ColorMyPencils(color)
  color = color or "catppuccin-mocha"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, "StatusLine", { ctermfg = 1} )
end

ColorMyPencils()
