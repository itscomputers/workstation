return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "                                                                                                                          ",
      "                                                                                         iiii                             ",
      "                                                                                        i::::i                            ",
      "                                                                                         iiii                             ",
      "                                                                                                                          ",
      " nnnn  nnnnnnnn          eeeeeeeeeeee         ooooooooooo   vvvvvvv           vvvvvvv  iiiiiii      mmmmmmm    mmmmmmm    ",
      " n:::nn::::::::nn      ee::::::::::::ee     oo:::::::::::oo  v:::::v         v:::::v   i:::::i    mm:::::::m  m:::::::mm  ",
      " n::::::::::::::nn    e::::::eeeee:::::ee  o:::::::::::::::o  v:::::v       v:::::v     i::::i   m::::::::::mm::::::::::m ",
      " nn:::::::::::::::n  e::::::e     e:::::e  o:::::ooooo:::::o   v:::::v     v:::::v      i::::i   m::::::::::::::::::::::m ",
      "   n:::::nnnn:::::n  e:::::::eeeee::::::e  o::::o     o::::o    v:::::v   v:::::v       i::::i   m:::::mmm::::::mmm:::::m ",
      "   n::::n    n::::n  e:::::::::::::::::e   o::::o     o::::o     v:::::v v:::::v        i::::i   m::::m   m::::m   m::::m ",
      "   n::::n    n::::n  e::::::eeeeeeeeeee    o::::o     o::::o      v:::::v:::::v         i::::i   m::::m   m::::m   m::::m ",
      "   n::::n    n::::n  e:::::::e             o::::o     o::::o       v:::::::::v          i::::i   m::::m   m::::m   m::::m ",
      "   n::::n    n::::n  e::::::::e            o:::::ooooo:::::o        v:::::::v          i::::::i  m::::m   m::::m   m::::m ",
      "   n::::n    n::::n   e::::::::eeeeeeee    o:::::::::::::::o         v:::::v           i::::::i  m::::m   m::::m   m::::m ",
      "   n::::n    n::::n    ee:::::::::::::e     oo:::::::::::oo           v:::v            i::::::i  m::::m   m::::m   m::::m ",
      "   nnnnnn    nnnnnn      eeeeeeeeeeeeee       ooooooooooo              vvv             iiiiiiii  mmmmmm   mmmmmm   mmmmmm ",
      "                                                                                                                          ",
    }

    dashboard.section.buttons.val = {
      dashboard.button(";ee", "+ explore", "<cmd>NvimTreeToggle<cr>"),
      dashboard.button(";ff", "+ find", "<cmd>FzfLua files<cr>"),
      dashboard.button(";fs", "+ search", "<cmd>FzfLua live_grep<cr>"),
      dashboard.button("e", "+ new file", "<cmd>ene<cr>"),
      dashboard.button("q", "+ quit", "<cmd>qa<cr>"),
    }

    alpha.setup(dashboard.opts)

    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
