def stock_picker(array)
  result = Array.new
  p buying_day = array[1]
  p selling_day = array[4]
  p result.push(buying_day, selling_day)
end

stock_picker([7,5,6,15,17,11,5,4,8,6])