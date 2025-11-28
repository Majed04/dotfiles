return {
  {
    'm4xshen/autoclose.nvim',
    config = function()
      require("autoclose").setup()
    end
  },
  {
    "windwp/nvim-ts-autotag",
    ft = { "html", "javascriptreact", "typescriptreact", "vue" },
    config = true,
  }
}
