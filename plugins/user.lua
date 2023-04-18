return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
      { "sainnhe/sonokai" },
      { "fisadev/fisa-vim-colorscheme" },
      { "iamcco/markdown-preview.nvim" },
      { "github/copilot.vim" },
      { 'junegunn/vim-easy-align'},
      { "github/copilot.vim",
        event = "VeryLazy",
        config = function()
            -- copilot assume mapped
            vim.g.copilot_assume_mapped = true
            vim.g.copilot_no_tab_map = true
        end,

      },
      { "zbirenbaum/copilot.lua",
            cmd = "Copilot",
            event = "InsertEnter",
            config = function()
             require("copilot").setup({
                suggestion = { enabled = false },
                panel = { enabled = false },
                  })
           end,
       },
    {
          "zbirenbaum/copilot-cmp",
          after = { "copilot.lua" },
          config = function ()
              require("copilot_cmp").setup()
            end
},
}


