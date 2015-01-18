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