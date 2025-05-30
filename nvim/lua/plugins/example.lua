return {
  { "folke/which-key.nvim",  enabled = false }, -- disable a default nvchad plugin

  -- this opts will extend the default opts 
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = {"html", "css", "bash"} },
  }, 

  -- If your opts uses a function call ex: require*, then make opts spec a function
  -- Then modify the opts arg
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, conf)
      conf.defaults.mappings.i = {
        ["<C-j>"] = require("telescope.actions").move_selection_next,
        ["<Esc>"] = require("telescope.actions").close,
      }

     -- or 
     -- table.insert(conf.defaults.mappings.i, your table)
      return conf
    end,
  }
}
