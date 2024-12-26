return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.startify")

    dashboard.section.header.val = {
        -- customize alpha options
        "                          /|､",
        " •┏┓         ┓┓┏•        (°､ ｡ 7",
        " ┓┣ ┏┏┏┓┏┓┏┓┏┫┃┃┓┏┳┓     |､  ~ヽ",
        " ┗┗┛┛┗┗┻┣┛┗ ┗┻┗┛┗┛┗┗     じしf_,)〳",
        "        ┛                ",
    }

    alpha.setup(dashboard.opts)
  end,
}
