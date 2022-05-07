-- 全局常量
FRONT_NUMBER = 1

function Link(el)
    if el.target:find("%.md") or el.target:find("#") == 1 then
        el.target, _ = el.target:gsub("#%d+-", "#")
        el.target, _ = el.target:gsub("(%d%d)%.md", function(t)
            return string.format("ch%03d.xhtml", tonumber(t) + FRONT_NUMBER)
        end)
    end
    return el
end
