# def hello(name = "maruyama")
#     puts "Herro, #{name}."
# end


# hello()

# hello("watanabe")


# def volume(x, y, z)
#     return x * y * z
# end

# puts volume(2,3,4)
# puts volume(10,10,10)


# def area(x,y,z)
#     xy = x * y
#     yz = y * z
#     zx = z * x
#     (xy + yz + zx) * 2
# end

# p area(2, 3, 4)
# p area(10, 20, 30)


# def max(a,b)
#     if a > b
#         return a
#     end
#     return b
# end

# p max(2, 5)

# def myloop
#     while true
#         yield
#     end
# end


# num = 1
# myloop do
#     puts "num is #{num}"
#     break if num > 10
#     num *= 2
# end

# def area(x: 0, y: 0, z: 0)
#     xy = x * y
#     yz = y * z
#     zx = z * x
#     (xy + yz + zx) * 2
# end

# p area(x: 2, y: 3, z: 4)
# p area(y: 3, x: 2, z: 4)
# p area(x: 1, y: 2)¥

# def area(x: ,y: ,z:)
#     xy = x * y
#     yz = y * z
#     zx = z * x
# end

# p area(x:0 ,y:1, z:2)

# def volume(x: 2, y: 3, z: 4)
#     x * y * z
# end

# p volume(x:2, y:8)


def math(x: 0, y: 0, z: 0, **args)
    [x, y, z, args]
end

p math(z: 4,y: 3,x: 2)

p math(y: 3,z: 4,v: 5,g: 90)
