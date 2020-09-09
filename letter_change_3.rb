str = "ruby on rails"
rails = str.match(/rails/) #match 正規表現にマッチした文字列を取得する
puts rails

str2 = "Hello Ruby!! Hello Rails!!"
md = str2.match(/.*Ruby!!/) # *検索文字列で指定することにより検索文字列を含む前の部分も一緒に取得できる
puts md
md2 = str2.match(/.*Rails!!/)
puts md2
md3 = str2.match(/.*!!/)
puts md3

str3 = "AAA-012-BBB".match(/\d+/) # \d+ 検索文字列の数値のみを拾う
puts str3
puts str3[0]

str4 = "Rubyの勉強 および Railsの勉強をはじめましょう"
