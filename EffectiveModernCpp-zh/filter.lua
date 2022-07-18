-- 全局常量
XHTML_OFFSET = 3
CH_LIST = {
  1, -- src/1.DeducingTypes/item1.md
  1, -- src/1.DeducingTypes/item2.md
  1, -- src/1.DeducingTypes/item3.md
  1, -- src/1.DeducingTypes/item4.md
  2, -- src/2.Auto/item5.md
  2, -- src/2.Auto/item6.md
  3, -- src/3.MovingToModernCpp/item10.md
  3, -- src/3.MovingToModernCpp/item11.md
  3, -- src/3.MovingToModernCpp/item12.md
  3, -- src/3.MovingToModernCpp/item13.md
  3, -- src/3.MovingToModernCpp/item14.md
  3, -- src/3.MovingToModernCpp/item15.md
  3, -- src/3.MovingToModernCpp/item16.md
  3, -- src/3.MovingToModernCpp/item17.md
  3, -- src/3.MovingToModernCpp/item7.md
  3, -- src/3.MovingToModernCpp/item8.md
  3, -- src/3.MovingToModernCpp/item9.md
  4, -- src/4.SmartPointers/item18.md
  4, -- src/4.SmartPointers/item19.md
  4, -- src/4.SmartPointers/item20.md
  4, -- src/4.SmartPointers/item21.md
  4, -- src/4.SmartPointers/item22.md
  5, -- src/5.RRefMovSemPerfForw/item23.md
  5, -- src/5.RRefMovSemPerfForw/item24.md
  5, -- src/5.RRefMovSemPerfForw/item25.md
  5, -- src/5.RRefMovSemPerfForw/item26.md
  5, -- src/5.RRefMovSemPerfForw/item27.md
  5, -- src/5.RRefMovSemPerfForw/item28.md
  5, -- src/5.RRefMovSemPerfForw/item29.md
  5, -- src/5.RRefMovSemPerfForw/item30.md
  6, -- src/6.LambdaExpressions/item31.md
  6, -- src/6.LambdaExpressions/item32.md
  6, -- src/6.LambdaExpressions/item33.md
  6, -- src/6.LambdaExpressions/item34.md
  7, -- src/7.TheConcurrencyAPI/Item35.md
  7, -- src/7.TheConcurrencyAPI/item36.md
  7, -- src/7.TheConcurrencyAPI/item37.md
  7, -- src/7.TheConcurrencyAPI/item38.md
  7, -- src/7.TheConcurrencyAPI/item39.md
  7, -- src/7.TheConcurrencyAPI/item40.md
  8, -- src/8.Tweaks/item41.md
  8, -- src/8.Tweaks/item42.md
}

-- 全局变量
ItemCount = 0

function Header(el)
  el:walk {
    Str = function(s)
      if s.text:find("条款") then
        ItemCount = ItemCount + 1
        el.identifier = string.format("item-%02d", ItemCount)
      end
      if s.text:find("简介") then
        el.level = 1
      end
    end,
  }
  return el
end

function Link(el)
  if el.target:find("item%d%d?%.md") then
    local match = el.target:match("(%d%d?)%.md")
    local item = tonumber(match)
    local ch = CH_LIST[item] + XHTML_OFFSET
    el.target = string.format("ch%03d.xhtml#item-%02d", ch, item)
  end
  return el
end
