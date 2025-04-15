function ColorMyPencils(color)
  color = color or "zenwritten"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, "StatusLine", { ctermfg = 1} )
end

ColorMyPencils()
