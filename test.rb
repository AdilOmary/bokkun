array = ["目黒三丁目\n東京都目黒区目黒3-9-3須田ビル1\n02号室\nお客様窓口 0120-498-007\n(受付時間9:00~21:00)\n★NYの定番”パストラン”をアレンジ★\nすき家の「ニューヨークポーク丼」\n♪期間限定で新発売♪\n店No:0004050 レージNo:0001\n2020年02月28日(金) 1 15時18分\n領取証\n卓No-P01\nお持帰り\n※141 牛丼並弁当\n¥350\n※045 キムチTP持開\n¥130\n※152 おんたま持開 ¥80\n----- ※は軽減税率適用商品\n内税品計\n¥560\n合計\n(8%対象¥560 消費税\n交通系IC\n¥560\n¥41)\n¥560\n現金計\n¥0\nお釣り\n¥0\n売上原(お客様控え)\nすき家\n電話番号\n0120-498-007\n2020年02月28日 15:18\n交通系残高\n交通系支払\n¥560\n交通系残高\n¥9,008\nカード番号\nTPkk kkk Mik kk kk0732\nSPRWID\nJE10730529009\nレシート#30:164911\n問い合わせ番号0005-5117822650\nレシートNo:4050-0142351\nSnip--027815-20-0001\n", "目黒三丁目", "東京都目黒区目黒3", "-", "9", "-", "3須田ビル1", "02号室", "お客様窓口", "0120", "-", "498", "-", "007", "(", "受付時間9", ":", "00", "~", "21", ":", "00", ")", "★NYの定番", "”", "パストラン", "”", "をアレンジ★", "すき家の", "「", "ニューヨークポーク丼", "」", "♪期間限定で新発売♪", "店No", ":", "0004050", "レージNo", ":", "0001", "2020年02月28日", "(", "金", ")", "1", "15時18分", "領取証", "卓No", "-", "P01", "お持帰り", "※141", "牛丼並弁当", "¥350", "※045", "キムチTP持開", "¥130", "※152", "おんたま持開", "¥80", "-", "-", "-", "-", "-", "※は軽減税率適用商品", "内税品計", "¥560", "合計", "(", "8", "%", "対象¥560", "消費税", "交通系IC", "¥560", "¥41", ")", "¥560", "現金計", "¥0", "お釣り", "¥0", "売上原", "(", "お客様控え", ")", "すき家", "電話番号", "0120", "-", "498", "-", "007", "2020年02月28日", "15", ":", "18", "交通系残高", "交通系支払", "¥560", "交通系残高", "¥9", ",", "008", "カード番号", "TPkk", "kkk", "Mik", "kk", "kk0732", "SPRWID", "JE10730529009", "レシート", "#", "30", ":", "164911", "問い合わせ番号0005", "-", "5117822650", "レシートNo", ":", "4050", "-", "0142351", "Snip", "-", "-", "027815", "-", "20", "-", "0001"]

response = array[0].split("\n")
x = []
response.select.with_index do |str, index|
  if str[0] == "※"
    x << [str, response[index + 1]]
  end
end
y = []
x.each do |arr|
  arr.each do|str|
    y << str.split(" ")
  end
end

prices = {}

prices[y[0][1]] = y[1][0].gsub('¥', '').to_i
prices[y[2][1]] = y[3][0].gsub('¥', '').to_i
prices[y[4][1]] = y[4][2].gsub('¥', '').to_i

p prices


# p a
# p response
# p response.index(x[0])
# # p response[14]
# # p x[0].split(" ")[1]
# # p x[1].split(" ")[1]
# # p x[2].split(" ")[1]
# p   x[0].split(" ")[1]
# prices = {}

# prices[x[0].split(" ")[1]] = response[response.index(x[0]) + 1]
# prices[x[1].split(" ")[1]] = response[response.index(x[1]) + 1]
# prices[x[2].split(" ")[1]] = response[response.index(x[2]) + 1]

# p prices
