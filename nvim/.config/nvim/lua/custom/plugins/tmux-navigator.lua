return {
  'alexghergh/nvim-tmux-navigation',
  opts = {
    disable_when_zoomed = true, -- defaults to false
    save_on_switch = 2,
  },
  init = function()
    vim.g.tmux_navigator_save_on_switch = 2
  end,
}
