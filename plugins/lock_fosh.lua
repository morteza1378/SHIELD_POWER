local function run(msg, matches)
    if is_momod(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['fosh'] then
                lock_fosh = data[tostring(msg.to.id)]['settings']['fosh']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_fosh == "yes" then
       delete_msg(msg.id, ok_cb, true)
    end
end
 
return {
  patterns = {
    "(ک*س)$",
    "کیر",
  "کص",
  "کــــــــــیر",
  "کــــــــــــــــــــــــــــــیر",
  "کـیـــــــــــــــــــــــــــــــــــــــــــــــــــر",
    "ک×یر",
  "ک÷یر",
  "ک*ص",
  "کــــــــــیرر",
    "kir",
    "مادرجنده",
    "مادر به فنا",
    "قهبه",
    "جنده",
    "گاییدم",
    "نگاییدم",
    "گایدی",
    "گاییدی",
    "ک ی ر",
    "ک ی ی ر",
    "بصیک",
    "سیکیم",
    "گوتویون",
    "قوتویون",
    "دلخین",
    "دلغین",
    "دلخ",
    "دلغ",
    "بسیک",
    "سیکتیر",
    "صیکتیر",
    "سیک",
    "صیک",
    "کون",
    "کونی",
    "الاغ",
    "فنا",
    "خایه",
    "دیوس",
    "دیوص",
    "دیوث",
    "خیه",
    "ننت",
    "حروم زاده",
    "حرام زاده",
    "nanat",
    "koni",
    "jende",
    "gande",
    "olag",
    "sik",
    "siktir",
    "گوه",
    "گو",
  "گوساله",
  "gosale",
  "kos",
  "nnt",
  "kon",
  "kir",
  "gusale",
  },
  run = run
}