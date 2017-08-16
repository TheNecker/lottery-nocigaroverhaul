require "minitest/autorun"
require_relative "nocigar.rb"

class TestNoCigar < Minitest::Test

def test_off_by_one_1_empty
	my_num = "5679"
	winners = []
	assert_equal([],lottery(my_num,winners))
 	end
 def test_win
  	my_num = "3422"
  	winners = ["1232","5674","3422","7866"]
  	assert_equal(["3422"], lottery(my_num,winners))
    end

 def test_off_by_one_3
 	my_num = "12345"
  	winners = ["12345","34121,","12384","91223"]
  	assert_equal(["12345"], lottery(my_num,winners))
  	end

 def test_off_by_one_4
  	my_num = "9816"
  	winners = ["9817","9283","4123","6123"]
  	assert_equal(["9817"], off_by_one(my_num,winners))
   	end

 def test_off_by_one_5
  	my_number = "9124355"
  	winners = ["9124356","3123091","9182645","71238233"]
  	assert_equal(["9124356"], off_by_one(my_number,winners))
 		end

 end

# def test_1
# 	Win_ticket = "1234"
# 	Loss_ticket = "4123", "4819", "2143", "9831", "6736", "7643"

# 	assert_equal(true, array_1_number_off(Win_ticket, Loss_ticket))
# end

# def test_2
# 	Win_ticket2 = "1234", "4819", "2143"
# 	Loss_ticket2 = "7643"
# 	assert_equal(true,array_3_strings(Win_ticket2,Loss_ticket2))
# 	end
# end

# 	def simple_test
# 		assert_equal(10-2, 4+4)
# 	end
# 	def checknums(my_nums, winners)
# 		matches = ["1234", "1412", "8172", "3123", "9712", "3132"]
# 		winners.each do |value|
# 			if value == my_nums
# 			end
# 	end
# 	match
# end

# .each_with_index(val, val)

# .include(my_nums)
#//got really lost, thrown out the window and hit the pavement\\
