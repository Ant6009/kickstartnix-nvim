return {
  'rcarriga/nvim-notify',
  event = { 'BufReadPost', 'BufNewFile' },
  opts = {
    timeout = 3000,
    background_colour = "#00000f",
    max_height = function()
      return math.floor(vim.o.lines * 0.75)
    end,
    max_width = function()
      return math.floor(vim.o.columns * 0.75)
    end,
    on_open = function(win)
      vim.api.nvim_win_set_config(win, { zindex = 100 })
    end,
  },
  config = function(_, opts)
    local notify = require('notify')
    notify.setup(opts)
    vim.notify = notify
  end,
}
