-- Autostart selected stuff

local awful = require("awful")

local cmds = {
	"xset -b",
	"picom -b --experimental-backends",
}

for cmd = 1, #cmds do
	awful.spawn.single_instance(cmds[cmd], awful.rules.rules)
end