song = {:title => "paranoid Android", :artist => "Radiohead"}
person = {"名前" => "高橋","仮名" => "タカハシ"}
mark = {11 => "Jack", 12 => "Queen", 13 => "King"}
person1 = {name: "後藤", furigana: "ゴトウ"}

p person1[:name]

person.each do |key,value|
    puts "#{key}: #{value}"
end

person.each_with_index do |key,value|
    puts "#{key},#{value}"
end

person.each do |key,value|
    puts "#{key},#{value}"
end

persons2 = ["name","aaa","bbb","ccc"]
p persons2

persons2[2] = "didididi"
p persons2