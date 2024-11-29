return {
  "TobinPalmer/Tip.nvim",
  event = "VimEnter",
  config = function()
    require("tip").setup({
      seconds = 2,
      title = "Tip!",
      url = "https://vtip.43z.one",
    })
  end,
}
