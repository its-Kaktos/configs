return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  ---@type Flash.Config
  opts = {
    jump = {
      nohlsearch = false,
      autojump = true,
    },
    modes = {
      -- isable flash activation with f,F,t,T keys
      char = {
        enabled = false,
      },
    },
  },
  -- stylua: ignore
  keys = {
    { "<leader>fs", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "<leader>fv", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "<leader>fr", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "<leader>fR", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
}
