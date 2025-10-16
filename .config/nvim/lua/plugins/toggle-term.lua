-- https://github.com/akinsho/toggleterm.nvim
-- https://github.com/akinsho/toggleterm.nvim?tab=readme-ov-file#setup
-- <C-\> to open terminal
return {
  -- amongst your other plugins
  -- { "akinsho/toggleterm.nvim", version = "*", config = true },
  -- -- or
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      open_mapping = [[<c-`>]],
      start_in_insert = true,
      direction = "float", --vertical | float | tab
    },
  },
}
