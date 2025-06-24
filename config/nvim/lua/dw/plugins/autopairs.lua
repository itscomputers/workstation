return {
  "windwp/nvim-autopairs",
  event = { "InsertEnter" },
  dependencies = {
    "hrsh7th/nvim-cmp",
  },
  config = function()
    local autopairs = require("nvim-autopairs")
    local Rule = require("nvim-autopairs.rule")
    local cond = require("nvim-autopairs.conds")

    autopairs.setup({
      check_ts = true,
      ts_config = {
        lua = { "string" },
        javascript = { "template_string" },
        java = false,
      },
    })

    autopairs.add_rules({
      Rule("\\[", "\\]", "tex"),
      Rule("\\(", "\\)", "tex"),
      Rule("\\begin{(%w*)}$", "tex")
        :replace_endpair(function(opts)
          local beforeText = string.sub(opts.line, 0, opts.col)
          local _, _, match = beforeText:find("\\begin{(%w*)")
          if match and #match > 0 then
            return "\\end{" .. match .. "}"
          end
          return ""
        end)
        :with_move(cond.none())
        :use_regex(true)
        :end_wise(function()
          return true
        end),
    })

    local cmp_autopairs = require("nvim-autopairs.completion.cmp")

    local cmp = require("cmp")

    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end,
}
