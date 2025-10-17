-- https://github.com/Maan2003/lsp_lines.nvim
return {
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  lazy = false,
  config = function()
    require("lsp_lines").setup()
    vim.keymap.set("", "<Leader>h", require("lsp_lines").toggle, { desc = "Toggle lsp_lines" })
  end,
}
