class MathDojo
	attr_accessor :total
	def initialize
		@total = 0
	end

	def add(num1, num2=0)
		addplace = num1 + num2
		@total += addplace
		return self
	end
	def subtract(num1, num2=0)
		subplace = num1 + num2
		@total -= subplace
		return self
	end
end
puts x = MathDojo.new.add(2).add(2, 5).subtract(3, 2).total
puts x
class MathDojoArray
	attr_accessor :total
	def initialize
		@total = 0
	end
	def add(num1, *rest)
		if num1.kind_of?(Array)
			num1.each{|x| @total += x}
		else
			@total += num1
		end

		if rest.kind_of?(Array)
			rest.flatten!
			rest.each{|x| @total += x}
		else
			@total += rest
		end
		return self
	end
	def subtract(num1, *rest)
		submath = 0
		if num1.kind_of?(Array)
			num1.each{|x| submath += x}
			@total -= submath
		else
			@total -= num1
		end
		
		submath = 0
		if rest.kind_of?(Array)
			rest.flatten!
			rest.each{|x| submath += x}
			@total -= submath
		else
			@total -= rest
		end
		return self
	end
end
puts x = MathDojoArray.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).total


