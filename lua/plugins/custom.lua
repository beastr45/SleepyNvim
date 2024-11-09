--custom lazyvim independent plugins go here
return {
  -- { "wakatime/vim-wakatime", lazy = false },
  {
    "Pocco81/auto-save.nvim",
    opts = {
      execution_message = {
        message = function() -- message to print on save
          return ""
        end,
        dim = 0.18, -- dim the color of `message`
        cleaning_interval = 250, -- (milliseconds) automatically clean MsgArea after displaying `message`. See :h MsgArea
      },
    },
  },

  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "stevearc/conform.nvim",
    opts = {

      formatters_by_ft = {
        html = { "prettier" },
        css = { "prettier" },
        -- fish = { "fish_indent" },
        -- sh = { "shfmt" },
      },
    },
  },

  -- {
  --   "kevinhwang91/nvim-ufo",
  --   event = "BufRead",
  --   dependencies = {
  --     { "kevinhwang91/promise-async" },
  --     {
  --       "luukvbaal/statuscol.nvim",
  --       config = function()
  --         local builtin = require("statuscol.builtin")
  --         require("statuscol").setup({
  --           -- foldfunc = "builtin",
  --           -- setopt = true,
  --           relculright = true,
  --           segments = {
  --             { text = { builtin.foldfunc }, click = "v:lua.ScFa" },
  --             { text = { "%s" }, click = "v:lua.ScSa" },
  --             { text = { builtin.lnumfunc, " " }, click = "v:lua.ScLa" },
  --           },
  --         })
  --       end,
  --     },
  --   },
  --   config = function()
  --     -- Fold options
  --     vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
  --     vim.o.foldcolumn = "1" -- '0' is not bad
  --     vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
  --     vim.o.foldlevelstart = 99
  --     vim.o.foldenable = true
  --
  --     require("ufo").setup()
  --   end,
  -- },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {}, -- this is equalent to setup({}) function
  },

  { "tpope/vim-sleuth" },

  -- { "L3MON4D3/LuaSnip", opts = { history = false } },

  -- {
  --   "lervag/vimtex",
  --   config = function()
  --     -- vim.g.vimtex_view_method = "evince"
  --     vim.g.vimtex_view_general_viewer = "evince"
  --     vim.g.vimtex_view_general_options = "--unique file:@pdf#src:@line@tex"
  --     vim.g.vimtex_compiler_method = "latexmk"
  --
  --     vim.api.nvim_set_keymap("n", "<leader>cx", ":VimtexCompileSS<CR>", {})
  --   end,
  --   ft = "tex",
  -- },

  {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim", -- required by telescope
      "MunifTanjim/nui.nvim",

      -- optional
      "nvim-treesitter/nvim-treesitter",
      "rcarriga/nvim-notify",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      -- configuration goes here
      lang = "rust",
      theme = {
        ["normal"] = {
          fg = "#D8A657",
        },
      },
    },
  },

  { "LudoPinelli/comment-box.nvim" },

  -- {"mg979/vim-visual-multi"},
}
