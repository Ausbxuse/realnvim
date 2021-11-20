require("telescope").setup {
  defaults = {
    -- Your defaults config goes in here
    -- theme = "ivy",
    layout_config = {
      vertical = {height = 0.5}
      -- other layout configuration here
    }
  },
  pickers = {
    -- Your special builtin config goes in here
    buffers = {
      sort_lastused = true
      -- theme = "ivy"
      --[[ previewer = true,
      mappings = {
        i = {
          ["<c-d>"] = require("telescope.actions").delete_buffer,
          -- or right hand side can also be a the name of the action as string
          ["<c-d>"] = "delete_buffer"
        },
        n = {["<c-d>"] = require("telescope.actions").delete_buffer}
      } ]]
    }
    -- find_files = {theme = "ivy"},
    -- commands = {theme = "ivy"}
  },
  extensions = {
    -- your extension config goes in here
  }
}
