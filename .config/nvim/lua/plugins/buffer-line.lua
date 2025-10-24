return {
  "akinsho/bufferline.nvim",
  opts = function(_, opts)
    -- 合并默认配置
    opts = vim.tbl_deep_extend("force", opts, {
      options = {
        indicator = {
          -- icon = "❯",
          style = "none", -- underline | icon
        },
        separator_style = { "", "" }, -- important "slant",
        -- separator_style = "slant",
        always_show_bufferline = true,
      },
    })
    -- 自定义高亮
    opts.highlights = {
      buffer_selected = {
        fg = "#C8D3F5",
        bg = "NONE",
        bold = true,
        underline = false,
        sp = vim.g.primary,
      },
      modified_selected = {
        -- fg = vim.g.primary,
        fg = "#EA8A63",
        bg = "NONE",
      },
    }

    return opts
  end,
}
