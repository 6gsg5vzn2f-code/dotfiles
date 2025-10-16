-- https://github.com/LazyVim/LazyVim/discussions/250#discussioncomment-13776065
return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "default",
      ["<Tab>"] = { "accept", "fallback" },
      -- ["<S-Tab>"] = { "select_prev", "fallback" },
      -- ["<CR>"] = { "accept", "fallback" },
    },
  },
}
