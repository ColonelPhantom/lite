local core = require "core"
local command = require "core.command"


local function eval(str)
  local fn, err = load("return " .. str)
  if not fn then fn, err = load(str) end
  assert(fn, err)
  return tostring(fn())
end


command.add("core.docview", {
  ["fold:create"] = function()
    core.command_view:enter("Fold start line", function(cmd)
      local begin = tonumber(cmd)
      core.command_view:enter("Fold end line", function(cmd)
        local fend = tonumber(cmd)
        core.active_view:add_fold(begin, fend)
      end)
    end)
  end,

  ["fold:delete"] = function()
    core.active_view.doc:replace(eval)
  end,
})
