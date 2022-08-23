local alpha = require'alpha'
local dashboard = require'alpha.themes.dashboard'
dashboard.section.header.val = {
   [[                               __                ]],
   [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
   [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
   [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
   [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
   [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
   [[                                                 ]],
   [[                                                 ]],
}
dashboard.section.buttons.val = {
   dashboard.button( "e", "  New file",        ":ene <BAR> startinsert <CR>"),
   dashboard.button( ".", "📂 Recent files",    ":Telescope oldfiles <CR>"),
   dashboard.button( "q", "  Quit NVIM",       ":qa<CR>"),
   dashboard.button( "-", "------------------------------------------------", ":<CR>"),
   dashboard.button( "v", "  Nvim config",     ":Telescope fd cwd=$XDG_CONFIG_HOME/nvim/ <CR>"),
   dashboard.button( "z", "  Zshrc",           ":e $XDG_CONFIG_HOME/zsh/.zshrc <CR>"),
   dashboard.button( "a", "  Awesome config",  ":e $XDG_CONFIG_HOME/awesome/rc.lua <CR>"),
   dashboard.button( "c", "  Config files",    ":e $XDG_CONFIG_HOME/ <CR>"),
   dashboard.button( "r", "🦀 Rust projects",   ":Telescope find_files find_command=rg,--ignore,--files,--glob=main.rs cwd=$HOME/code/rust/ <CR>"),
}

local handle = io.popen('fortune')
local fortune = handle:read("*a")

handle:close()
dashboard.section.footer.val = fortune
dashboard.config.opts.noautocmd = false
alpha.setup(dashboard.config)
