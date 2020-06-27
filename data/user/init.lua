-- put user settings here
-- this module will be loaded after everything else when the application starts

local keymap = require "core.keymap"
local config = require "core.config"
local style = require "core.style"

-- light theme:
-- require "user.colors.summer"

-- key binding:
-- keymap.add { ["ctrl+escape"] = "core:quit" }

-- TODO tree
table.insert(config.ignore_paths, "target")
table.insert(config.ignore_paths, "release")
table.insert(config.ignore_paths, "lib")

