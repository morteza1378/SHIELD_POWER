local function run(msg, matches)
if matches[1] == "reply" then
if msg.reply_id then
reply_msg(msg.reply_id, matches[2], ok_cb, false)
end end end return {
patterns = {"^(reply) (.*)$"},
run = run
}