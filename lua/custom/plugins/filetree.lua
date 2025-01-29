return {
  'nvim-neo-tree/neo-tree.nvim',
  -- "nvim-tree/nvim-web-devicons",
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        filtered_items = {
          visible = true,
        },
      },
    }
    -- Neotee bindings
    vim.keymap.set('n', '<leader>nts', ':Neotree filesystem reveal left<CR>')
  end,
}
