str = "HelLow WorLD"
puts str.downcase #downcase、文字を全て小文字に
puts str

str2= "HELLoW WOrld"
#破壊的メソッドは元のオブジェクトも変更する
#str2 = str2.downcaseを同時に行う
puts str2.downcase! 
puts str2

str3 = "Hellow worlD"
puts str3.upcase #upcase、小文字を全て大文字に
puts str3

str4 = "Hellow World"
puts str4.upcase!
puts str4

str5 ="HELLOW world"
puts str5.swapcase #swapcase 文字の小文字と大文字を逆転させる
puts str5

str6 = "Hellow world"
puts str5.swapcase!
puts str5

str7 = "hello world" #capitalize 最初の文字のみ小文字から大文字に変換する
puts str7.capitalize
puts str7

str8 = "hellow World"
puts str8.capitalize!
puts str8
