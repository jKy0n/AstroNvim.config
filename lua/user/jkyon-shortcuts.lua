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
