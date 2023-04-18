-- return {
--   "jose-elias-alvarez/null-ls.nvim",
--   opts = function(_, config)
--     -- config variable is the default configuration table for the setup function call
--     -- local null_ls = require "null-ls"
--
--     -- Check supported formatters and linters
--     -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
--     -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
--     config.sources = {
--       -- Set a formatter
--       null_ls.builtins.diagnostics.vale,
--       -- null_ls.builtins.formatting.stylua,
--       -- null_ls.builtins.formatting.prettier,
--       -- null_ls.builtins.diagnostics.flake8,
--       --  null_ls.builtins.diagnostics.mypy,
--       -- null_ls.builtins.diagnostics.pyproject_flake8,
--       -- null_ls.builtins.diagnostics.ruff,
--       -- null_ls.builtins.formatting.black,
--       -- null_ls.builtins.formatting.fprettify,
--       -- null_ls.builtins.formatting.isort,
--     }
--     return config -- return final config table
--   end,
-- }

return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, opts)
    local null_ls = require "null-ls"
    opts.sources = {
      -- null_ls.builtins.diagnostics.vale,
      null_ls.builtins.code_actions.proselint,
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettier,
      null_ls.builtins.formatting.prettierd,
      null_ls.builtins.formatting.black,
      null_ls.builtins.formatting.isort,
      null_ls.builtins.formatting.clang_format,
      null_ls.builtins.formatting.shfmt.with {
        args = { "-i", "2" },
      },
      null_ls.builtins.diagnostics.luacheck,
      null_ls.builtins.diagnostics.flake8,
      null_ls.builtins.diagnostics.mypy,
    }
    return opts
  end,
}
