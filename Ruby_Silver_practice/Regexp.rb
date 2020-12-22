str = "aaabbbcccddd11122333aaa"
mix = "111,bbb,222ccc333"
int = 123454566777
p str.gsub(/aaa/,"bbb")

p str.scan(/\d+/)
p str.gsub(/a+/,"z")

p int.scan(/^[0-9].$/)