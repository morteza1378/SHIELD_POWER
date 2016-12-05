
do

function run(msg, matches)
  return " The Support Invition Link : \n https://telegram.me/joinchat/C3JzFz_B1Fy6RYJ8cmW_Rg"
  end
return {
  description = "shows support link", 
  usage = "!tosupport : Return supports link",
  patterns = {
    "^([!/]tosupport)$",
    "^(ساپورت)$"
  },
  run = run
}
end


