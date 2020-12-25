p "80".oct
p "120".hex
p "90".hex
p "170".hex
p "11190".oct

p "99999".oct

a = [1,2,3,4,5]

p a[0,3].map{ |a| a }
p a[0..-2]
p a[0..-1]
p a[0...-2]

p 07
p 010
p 011
p 012

(1..10).each do |i|
    p i
end

(1...10).to_a.reverse_each do |i|
    p i
end

p (1...10).to_a


er = StandardError.new
p er.class
