-- lua/plugins/nvimtree.lua
local nvim_tree_custom_config = {
  on_attach = function(bufnr)
    local api = require("nvim-tree.api")

    -- Helper to create consistent keymap options with descriptions
    local function get_keymap_opts(description)
      return {
        buffer = bufnr,
        noremap = true,
        silent = true,
        nowait = true,
        desc = "NvimTree: " .. description,
      }
    end

    -- Simulates a key press programmatically.
    -- Useful for making one key behave exactly like another existing key
    -- (e.g., after nvim-tree has set up its default 'k' behavior).
    local function simulate_key_press(key_to_simulate)
      return function()
        -- Convert the key to terminal codes that nvim_feedkeys expects
        local termcodes = vim.api.nvim_replace_termcodes(key_to_simulate, true, false, true)
        -- Feed the keys in normal mode, non-recursively, without trying to escape keycodes further
        vim.api.nvim_feedkeys(termcodes, 'n', false)
      end
    end

    -- It's important to apply nvim-tree's default mappings first.
    -- This ensures that 'k' and 'j' (and others) are mapped to nvim-tree's actions
    -- before we try to simulate them or unmap them.
    if api.config and api.config.mappings and api.config.mappings.default_on_attach then
      api.config.mappings.default_on_attach(bufnr)
    end

    -- Custom navigation: 'e' acts like 'k', 'a' acts like 'j'
    vim.keymap.set('n', "e", simulate_key_press('k'), get_keymap_opts("Navigate Up (via k)"))
    vim.keymap.set('n', "a", simulate_key_press('j'), get_keymap_opts("Navigate Down (via j)"))

    -- Standard open actions using nvim-tree's API
    if api.node and api.node.open and api.node.open.edit then
      local open_action = api.node.open.edit
      vim.keymap.set('n', "<CR>", open_action, get_keymap_opts("Open"))
      vim.keymap.set('n', "o", open_action, get_keymap_opts("Open (alternative)"))
    end

    -- Create file/folder action using nvim-tree's API
    if api.fs and api.fs.create then
      vim.keymap.set('n', "t", api.fs.create, get_keymap_opts("Create"))
    end

    -- Unmap original navigation keys and 'a'.
    -- This prevents conflicts after remapping and ensures 'j'/'k' don't perform
    -- their original actions if we only want 'e'/'a' for navigation.
    -- pcall is used to avoid errors if a mapping doesn't already exist.
    local keymap_del_opts = { buffer = bufnr }
    pcall(vim.keymap.del, 'n', 'j', keymap_del_opts)
    pcall(vim.keymap.del, 'n', 'k', keymap_del_opts)
    pcall(vim.keymap.del, 'n', 'a', keymap_del_opts) -- Unmap 'a' as it's now used for navigation
  end,
}

return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = nvim_tree_custom_config,
}
