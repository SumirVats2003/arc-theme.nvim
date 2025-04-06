local M = {}

function M.darken(hex, factor)
  if not hex or #hex ~= 7 then return hex end
  local r = tonumber(hex:sub(2, 3), 16)
  local g = tonumber(hex:sub(4, 5), 16)
  local b = tonumber(hex:sub(6, 7), 16)

  r = math.floor(r * (1 - factor))
  g = math.floor(g * (1 - factor))
  b = math.floor(b * (1 - factor))

  return string.format("#%02x%02x%02x", r, g, b)
end

return M
