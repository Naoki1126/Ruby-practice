song = {:title => "paranoid Android", :artist => "Radiohead"}
person = {"名前" => "高橋","仮名" => "タカハシ"}
mark = {11 => "Jack", 12 => "Queen", 13 => "King"}
person1 = {name: "後藤", furigana: "ゴトウ"}

p person1[:name]

person.each do |key,value|
    puts "#{key}: #{value}"
end
