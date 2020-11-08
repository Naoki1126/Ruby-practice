p Hash.new
p {}
p Hash({})
# p Hash()

test = ""
[1, 2, 3].inject do|x, y| 
    p "------------------"
    p x
    p y
    p x + y ** 2 
    p "------------------"
end
