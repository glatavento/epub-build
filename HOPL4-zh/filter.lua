-- 全局常量
XHTML_OFFSET = 1

function Link(el)
    if el.target:find("%.md") or el.target:find("#") == 1 then
        el.target, _ = el.target:gsub("#%d+-", "#")
        el.target, _ = el.target:gsub("(%d%d)%.md", function(t)
            return string.format("ch%03d.xhtml", tonumber(t) + XHTML_OFFSET)
        end)
    end
    return el
end
