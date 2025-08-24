---@class Color
---@field private value integer|nil
local Color = {}
Color.__index = Color

---Create a new color
---@param value integer
---@return Color
function Color.new(value)
	local color = setmetatable({
		value = value,
	}, Color)
	return color
end

---Create the "NONE" color
---@return Color
function Color.none()
	local color = setmetatable({
		value = nil,
	}, Color)
	return color
end

---Get hexadecimal color value as a string
---@return string
function Color:to_string()
	if self.value == nil then
		return "NONE"
	end

	-- Ensure 6-digit hex output with leading zeros
	return string.format("#%06x", self.value)
end

return Color
