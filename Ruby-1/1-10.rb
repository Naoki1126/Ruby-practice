tags = [ "A","IMG","PRE"]

tags.each do |tagname|
    case tagname
    when "P","A","I","B", "BLOCKQUOTE"
        puts "#{tagname} has a child"
    when "IMG", "BR"
        puts "#{tagname} has no child."
    else
        puts "#{tagname} cannot be used"
    end
end

array = ["a",1,nil]

array.each do |item|
    case item
    when String
        puts "item is a String"
    when Numeric
        puts "item is a Numeric"
    else
        puts "item is something"
    end

end


# first =1
# second = 2
# third = 3

# first2, second2, third2 = 1,2,3

# first, second, *rest = 1,2,3,4,5
# p [first,second,rest]

first, *second, rest = 1,2,3,4,5
p [first,second,rest]

# a,b = 0,1
# tmp = a
# a = b
# b =tmp
# p [a,b]

a,b = 0,1
a,b = b,a
p [a,b]

