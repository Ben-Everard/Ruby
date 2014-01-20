first_number
second_number

operation = rand(1..4)

case operation
	when 1
		puts "The answer is #{first_number + second_number}\n Operation used was Addition"
	when 2
		puts "The answer is #{first_number - second_number}\n Operation used was Subtraction"
	when 3
		puts "The answer is #{first_number * second_number}\n Operation used was Multiplication"
	when 4
		puts "The answer is #{first_number / second_number}\n Operation used was Division"
	else
		puts "Error running Program"
	end


puts "Please enter your first number?"
x = gets.chomp
puts "Please enter your second number?"
y = gets.chomp
