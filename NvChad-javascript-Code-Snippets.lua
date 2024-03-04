-- 
local M = {
  filetype = {
    javascript = {
      require("formatter.filetypes.javascript").prettier
    },
    typescript = {
      require("formatter.filetypes.typescript").prettier
    },

    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  command = "FormatWriteLock"
})

return M

-- Second Setup Formatter.nvim

local util = require "formatter.util"

return function(parser)
  if not parser then
    return {
      exe = "prettier",
      args = {
        "--stdin-filepath",
        util.escape_path(util.get_current_buffer_file_path()),
      },
      stdin = true,
      try_node_modules = true,
    }
  end

  return {
    exe = "prettier",
    args = {
      "--stdin-filepath",
      util.escape_path(util.get_current_buffer_file_path()),
      "--parser",
      parser,
    },
    stdin = true,
    try_node_modules = true,
  }
end

-- Settings mappings.lua

local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"}
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end
    }
  }
}

return M
