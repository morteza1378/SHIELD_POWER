function run(msg, matches)
local url , res = http.request('http://api.gpmod.ir/time/')
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)
local text ='🌇 کشور شما : ایران🇮🇷 \n⌚️ساعت '..jdat.FAtime..' \n🗓امروز '..jdat.FAdate..' میباشد.\n➖➖➖➖➖➖\n🌃 Name country : Iran🇮🇷 \n⌚️O,clock '..jdat.ENtime..' \n🗓Today '..jdat.ENdate..' \n➖➖➖➖➖➖➖➖➖\nChannel Team:@Shield_Tm'
return text
end
return {
  patterns = {"^([Tt][iI][Mm][Ee])$",
"^زمان$",
}, 
run = run 
}