return {
  "saghen/blink.cmp",
  version = "*", 
  opts = {
    keymap = { preset = "super-tab" },
    appearance = {
--j      use_nvim_cmp_as_default = true,
      -- Set to 'mono' for 'Nerd Font' icons, or 'normal' for text
      --nerd_font_variant = "mono",
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    signature = { enabled = true },
  },
}
