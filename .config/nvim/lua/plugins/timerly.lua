return {
  "nvzone/timerly",
  dependencies = {
    "nvzone/volt",
  },
  config = function()
    vim.keymap.set('n', '<leader>t', ':TimerlyToggle', {})
  end
}
