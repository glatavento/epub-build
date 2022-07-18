-- 全局变量
PartNumber = 1

local function contains(tab, val)
  for index, value in ipairs(tab) do
    if value == val then
      return true
    end
  end
  return false
end

function Header(el)
  if contains(el.attr.classes, "part") then
    local level = el.level - 1
    local content = "Part" .. PartNumber .. " " .. el.content[1].text
    PartNumber = PartNumber + 1
    return pandoc.Header(level, content)
  end
end
