do

local function run(msg, matches)
  if matches[1]:lower() == 'shield' or 'شیلد' then --change this with anything you want
      return [[ 
  
    🤖 SHIELD POWER  ♈️ FINAL

    Advanced ManagerBot Based On TeleSeed
=========================
    
   ✏ Edited By :

   ⭐ سازنده ربات : 

                               👤


@Xx_PesareShield_shah2Arvah_xX						   
@Xx_KinG_SuPeR_AdMiN_SHIELD_xX
✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚
    
   🆔 Our Telegram Channel ID :

   ⭐ کانال رسمی ما :

   ❇ @Shield_Tm

✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚
  
   👥 Speacial Thanks To My friends :

   ⭐ تشکر از کسانی که حمایت کردند :

✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚

    📬 our massage bot :

   ⭐ ربات پیام رسان ما :  

    ✳ @Pv_HIDDEN_BOY_BOT

=========================
🇸 🇭 🇮 🇪 🇱 🇩™


 ]]
  end
end

return {
  patterns = {
    "^[!/#]([Ss]hield)$",
    "^([Ss]hield)$",
"^شیلد$",
    
    },
  run = run
}
end