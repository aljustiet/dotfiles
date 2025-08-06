return {
  'derektata/lorem.nvim',
  config = function()
    require("lorem").setup()
  end,
  cmd = { 'Lorem' },
}
