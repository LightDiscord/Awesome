local awful = require "awful"
local gears = require "gears"

local function view(tag)
	tag:view_only()
end

local function move(t)
	if client.focus then
		client.focus:move_to_tag(t)
	end
end

local function next(t)
	awful.tag.viewnext(t.screen)
end

local function prev(t)
	awful.tag.viewprev(t.screen)
end

return gears.table.join(
	awful.button({ }, 1, view),
	awful.button({ require("src.settings").modkey }, 1, move),
	awful.button({ }, 3, awful.tag.viewtoggle),
	awful.button({ }, 4, next),
	awful.button({ }, 5, prev)
)
