str = "ruby ruby ruby"
puts str.sub(/ruby/, 'python') #sub 正規表現にマッチした最初の一箇所を変更するメソッド
puts str

str2 = "ruby ruby"
puts str2.sub('ruby','python') #正規表現でなくてもメソッドは発動する

str3 = "ruby ruby ruby"
puts str3.sub!(/ruby/, 'python') #破壊的メソッド、オブジェクトの中身も変えてしまう
puts str3

str4 = "ruby ruby ruby rails"
puts str4.gsub(/ruby/,'python') #gsub 正規表現にマッチ部分全てを変換する
puts str4
puts str4.gsub('ruby','python') #正規表現でなくても可

str5 = "ruby ruby ruby ruby python"
puts str5.gsub!(/ruby/,'python') #破壊的メソッド
puts str5
puts str5.gsub!('python','Ruby') #正規表現でなくても可
puts str5