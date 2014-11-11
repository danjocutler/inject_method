class Array

	def accumulator(value=nil)
		arr = self.dup

		if value == nil
			accumulator = arr.shift
		else
			accumulator = value
		end

		arr.each do |element|
			accumulator = yield(accumulator, element)
		end
 	
	accumulator
	end

end

# array = [*1..4]
# p array.accumulator(&:+)
# p [{a:1}, {b:2}].accumulator{|acc, el| acc.merge(el)}
# p array.accumulator(2, &:+)
# p array.accumulator(&:*)
# p array.accumulator(10, &:*)
# p array


# [1,2,3,4].inject do |acc, el|
# 		puts "at this moment the accumulator is eq:#{acc} and the element that is going to be added to the acc is #{el}"
# 		end
# 	end
# end