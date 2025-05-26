return {
  {
    'mbbill/undotree',
    keys = {
      {
        '<leader>u',
        ':UndotreeShow<CR>',
        desc = 'Open UndoTree',
        silent = true,
      },
    },
    init = function()
      vim.g.undotree_SplitWidth = 40
      vim.g.undotree_DiffpanelHeight = 15
      vim.g.undotree_SetFocusWhenToggle = 1
    end,
  },
}
