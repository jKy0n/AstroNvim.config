-- ~/.config/nvim/lua/user/keymaps.lua

-- Opções padrão para os keymaps
local opts = { noremap = true, silent = true }

-- Keybinds Gerais
-- Navegar entre painéis usando Ctrl + Setas
vim.keymap.set('n', '<C-Left>', '<C-w>h', opts)
vim.keymap.set('n', '<C-Down>', '<C-w>j', opts)
vim.keymap.set('n', '<C-Up>', '<C-w>k', opts)
vim.keymap.set('n', '<C-Right>', '<C-w>l', opts)

-- Redimensionar painéis usando Alt + Setas
vim.keymap.set('n', '<A-Left>', '<C-w><', opts)
vim.keymap.set('n', '<A-Right>', '<C-w>>', opts)
vim.keymap.set('n', '<A-Up>', '<C-w>+', opts)
vim.keymap.set('n', '<A-Down>', '<C-w>-', opts)

-- Home e End no modo de inserção
vim.keymap.set('i', '<Home>', '<C-o>^', opts)
vim.keymap.set('i', '<End>', '<C-o>$', opts)

-- Refazer com Alt + u
vim.keymap.set('n', '<A-u>', '<C-r>', opts)

-- Apagar linha no Normal Mode
vim.keymap.set("n", "<S-Del>", "dd", { desc = "Delete line (Shift+Del)" })

-- Apagar linha no Insert Mode (Shift+Del)
vim.keymap.set("i", "<Esc>[99~", function()
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>0ddi", true, false, true), "n", true)
end, { noremap = true, silent = true, desc = "Delete entire line (Shift+Del insert mode)" })

-- Which-key: Atalhos Rápidos
local which_key = require("which-key")
which_key.register({
  ["<leader>h"] = {
    name = "Atalhos Rápidos",
    u = { ":undo<CR>", "Undo" },
    r = { ":redo<CR>", "Redo" },
    s = { ":w<CR>", "Salvar" },
    q = { ":q<CR>", "Fechar" },
  },
})
