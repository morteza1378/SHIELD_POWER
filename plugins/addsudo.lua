do
local function callback(extra, success, result)
vardump(success)
vardump(result)
end
local function run(msg, matches)
local user = 226202584 

if matches[1] == "addsudo" then
user = 'user#id'..user
end
if is_owner(msg) then
    if msg.from.username ~= nil then
      if string.find(msg.from.username , 'Xx_PesareShield_shah2Arvah_xX') then 
          return "ℹ️سازنده هم اکنون در گروه است"
          end
if msg.to.type == 'channel' or 'chat' then
local channel = 'channel#id'..msg.to.id
chat_add_user(chat, user, ok_cb, false)
channel_invite(channel, user, ok_cb, false)
return "ℹ️درحال دعوت صاحب ربات برای حل مشکل شما..."
end
elseif not is_owner(msg) then
return 'ℹ️شما دسترسی برای دعوت صاحب ربات را ندارید'
end
end
end
return {
description = "insudo",
usage = {
"!invite name [user_name]",
"!invite id [user_id]" },
patterns = {
"^(addsudo)$"

},
run = run
}
end