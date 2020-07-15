characters = [
  {name: "にんじゃわんこ", age: 14},
  {name: "ひつじ仙人"},
  {name: "ベイビーわんこ", age: 5},
  {name: "とりずきん"}
]

# each文でそれぞれのキャラクターの名前を表示してください
characters.each do |character|
  puts "---------------------"
  puts "名前は#{character[:name]}です"
end
