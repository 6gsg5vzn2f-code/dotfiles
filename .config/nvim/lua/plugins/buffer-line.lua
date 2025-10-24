return {
  "akinsho/bufferline.nvim",
  opts = function(_, opts)
    -- 合并默认配置
    opts = vim.tbl_deep_extend("force", opts, {
      options = {
        show_buffer_close_icons = false,
      },
    })
    return opts
  end,
}
