local function run(msg, matches)
  local htp = http.request('http://api.vajehyab.com/v2/public/?q='..URL.escape(matches[1]))
  local data = json:decode(htp)
 return 'کلمه : '..(data.data.title or data.search.q)..'\n\nمعنی : '..(data.data.text or '----' )..'\n\nمنبع : '..(data.data.source or '----' )..'\n\n'..(data.error.message or '')..'@Shield_Tm'
end
return {
  patterns = {
    "^ترجمه (.*)$"
  },
  run = run
}