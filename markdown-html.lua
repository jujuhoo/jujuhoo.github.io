local M = {}
function M.htmlTag(s)
   -- 把最常用的几个标签换成 LaTeX
   s = s:gsub("<em>(.-)</em>"     ,"\\emph{%1}")
   s = s:gsub("<strong>(.-)</strong>","\\textbf{%1}")
   s = s:gsub("<code>(.-)</code>" ,"\\texttt{%1}")
   s = s:gsub("<br%s*/?>"        ,"\\\\ ")
   -- 其余原样输出，你可按需扩展
   tex.sprint(s)
end
return M