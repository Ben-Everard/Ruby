#Strings
puts "Using Strings"
x = "codingDojo and Learning ruby"
y = "CodingDojo"
z = ""
puts x.capitalize
puts y.downcase
puts x.length
puts y.split
puts z.empty?
puts x.include? "learning"
puts x.include? "Learning"
puts x.split(' ').to_s

#Arrays
puts "\nUsing Arrays"
a = %w[Coding Dojo]
b = ["Learning", "Ruby", "on", "Rails"]
c = [1,2,3,4,5,6,7]

puts a.at(1)
puts b.at(0)
puts c.reverse.to_s
puts c.reverse.shuffle.to_s
puts b.length
puts b.sort.to_s
puts b.join('-')
puts c[3..6].to_s
puts c.insert(-2, 1,2,3).to_s
puts a.values_at(0,1).join(' at the ')

#Ranges
puts "\nUsing Ranges"
g = [1,2,3,4,5]
h = (49..99).to_a

puts g.member?(2)
puts ("a".."g").member?('h')
puts h.include?("a")
puts h.include?("on")
puts g.last
puts h.last
puts g.max
puts h.min

#Hashes
puts "\nUsing Hash"
t = Hash[["first_name" => "Ben", "age" => 32], ["first_name" => "Emily", "age" => 32]]
s = {:first_name => "Ben", :age => 32}
r = {"first_name" => "Damon", "age" => 38}
puts t
s.delete("first_name")
puts s
puts t.empty?
puts s.has_key?("age")
puts s.has_value?("Ben")
puts r.has_value?("damon")

#Blocks
puts "\nUsing Blocks"

def sometest
	yield
	puts "This is back in the method"
end
sometest {puts "This is not in the method it got passed in as a block"}

def math
	yield(7)
	puts "Just did some math"
end
math {|x| puts "#{x} added to it self is #{x+x}"}

