-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'ThePrimeagen/harpoon',
    dependencies = 'nvim-lua/plenary.nvim',
    config = function()
      local mark = require 'harpoon.mark'
      local ui = require 'harpoon.ui'

      vim.keymap.set('n', '<leader>ha', mark.add_file, { desc = 'Add file' })
      vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu, { desc = 'Harpoon quick menu' })
      vim.keymap.set('n', '<leader>hm', ui.toggle_quick_menu, { desc = 'Quick menu' })
      vim.keymap.set('n', '<leader>hn', ui.nav_next, { desc = 'Next file' })
      vim.keymap.set('n', '<leader>hp', ui.nav_prev, { desc = 'Previous file' })
      for i = 1, 9, 1 do
        vim.keymap.set('n', '<leader>h' .. i, function()
          ui.nav_file(i)
        end, { desc = 'Harpoon navigate to file ' .. i })
      end
    end,
  },
  {
    'mbbill/undotree',
    config = function()
      vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Toggle Undotree' })
    end,
  },
  {
    'tpope/vim-fugitive',
    config = function()
      vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = 'Git status' })
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter-context',
  },
}
