require 'my_inject'

describe Array do 

	context "Addition" do
		it "should add numbers when given no argument" do
			expect([*1..4].accumulator(&:+)).to eq 10	
		end

		it "should add numbers when given an argument" do
			expect([*1..4].accumulator(7, &:+)).to eq 17
		end
	end

	context "Multiplication" do
		it "should multiply numbers when given no argument" do
			expect([*1..4].accumulator(&:*)).to eq 24
		end

		it "should multiply numbers when given an argument" do
			expect([*1..4].accumulator(10, &:*)).to eq 240
		end
	end

	context "strings" do
		it "should find the longest word" do
			expect(%w(cup book monitor).accumulator  {|x, y| x.length > y.length ? x : y}).to eq 'monitor'
		end

		it "should find the shortest word" do
			expect(%w(dan is cool).accumulator  {|x, y| x.length < y.length ? x : y}).to eq "is"
		end
	end
end