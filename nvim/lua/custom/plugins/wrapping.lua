return {
  'andrewferrier/wrapping.nvim',
  opts = {
    notify_on_switch = false,
    auto_set_mode_heuristically = false,
  },
  config = function(_, opts)
    require("wrapping").setup(opts)

    vim.api.nvim_create_autocmd("BufReadPost", {
      callback = function()
        require("wrapping").enable()
      end,
    })
  end,
}
