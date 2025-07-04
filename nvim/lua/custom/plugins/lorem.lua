return {
  {
    'derektata/lorem.nvim',
    config = function()
      require('lorem').setup()
    end,
    cmd = { 'Lorem' }, -- lazy-loads only when used
  },
}
