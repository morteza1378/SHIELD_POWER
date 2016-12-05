local function run(msg, matches)
  local yon = http.request('http://api.yon.ir/?url='..URL.escape(matches[1]))
  local jdat = json:decode(yon)
  local bitly = https.request('https://api-ssl.bitly.com/v3/shorten?access_token=f2d0b4eabb524aaaf22fbc51ca620ae0fa16753d&longUrl='..URL.escape(matches[1]))
  local data = json:decode(bitly)
  local yeo = http.request('http://yeo.ir/api.php?url='..URL.escape(matches[1])..'=')
 local opizo = http.request('http://cruel-plus.ir/opizo.php?url='..URL.escape(matches[1])..'&mail=reza.soft.80@gmail.com')
  local u2s = http.request('http://u2s.ir/?api=1&return_text=1&url='..URL.escape(matches[1]))
  local llink = http.request('http://llink.ir/yourls-api.php?signature=a13360d6d8&action=shorturl&url='..URL.escape(matches[1])..'&format=simple')
 
    return ' لینک مورد نظر شما :\n\n'..data.data.long_url..'\n\nکوتاه شده با bitly :\n\n'..data.data.url..'\n\nکوتاه شده با yeo :\n\n'..yeo..'\n\nکوتاه شده با opizo :\n\n'..opizo..'\n\nکوتاه شده با u2s :\n\n'..u2s..'\n\nکوتاه شده با llink : \n\n'..llink..'\n\nکوتاه شده با yon : \n\nhttp://yon.ir/'..jdat.output..'\n@developers_channel'
end
return {
  patterns = {
    "^[!#/][Ll][Ii][Nn][Kk] (.*)$",
    "^[Ll][Ii][Nn][Kk] (.*)$",
    "^لینک (.*)$"
  },
  run = run
}