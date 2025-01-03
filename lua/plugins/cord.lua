return {
  'vyfor/cord.nvim',
  build = './build || .\\build',
  event = 'VeryLazy',
  -- opts = {}, -- calls require('cord').setup()
  opts = function()
  require('user.cord_config') -- Insere a lógica de idle neste arquivo
  return {}
end,
}
