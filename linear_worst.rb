# Write a Ruby method that takes a number n. This method must print the worst-case
# number of iterations for linear search to find an item in collections of size one to n.
# Use it to generate a table of worst-case iterations of collections up to size 10.

def linear_search(n)
  arr = []
  val = n
  (1..n).each do |num|
    arr << num
  end
	 arr.each do |i|
	 	if i == val
      if i == 1
        p "N = #{val}: Requires #{i} iteration in worst-case scenario"
      else
        p "N = #{val}: Requires #{i} iterations in worst-case scenario"
      end
    end
	end
end


# linear_search(1)
# linear_search(2)
# linear_search(3)
# linear_search(4)
# linear_search(5)
# linear_search(6)
# linear_search(7)
# linear_search(8)
# linear_search(9)
# linear_search(10)
#
# "N = 1: Requires 1 iteration in worst-case scenario"
# "N = 2: Requires 2 iterations in worst-case scenario"
# "N = 3: Requires 3 iterations in worst-case scenario"
# "N = 4: Requires 4 iterations in worst-case scenario"
# "N = 5: Requires 5 iterations in worst-case scenario"
# "N = 6: Requires 6 iterations in worst-case scenario"
# "N = 7: Requires 7 iterations in worst-case scenario"
# "N = 8: Requires 8 iterations in worst-case scenario"
# "N = 9: Requires 9 iterations in worst-case scenario"
# "N = 10: Requires 10 iterations in worst-case scenario"
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# TABLE:
# N		Number of iterations in the worst-case scenario
# --------------------------------------------------------------
# 1	|	1
# 2	|	2
# 3 |	3
# 4	|	4
# 5	|	5
# 6	|	6
# 7	|	7
# 8	|	8
# 9	|	9
# 10|	10
