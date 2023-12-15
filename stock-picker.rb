def stock_picker(stock_array)

  #Initializing variables
  purchasing_price = 0
  purchasing_day = 0
  tomorrows_price = 0
  selling_day = 1
  result = Array.new

  stock_array.each_with_index do |todays_price, current_day|
    # Getting the selling value and day
    current_selling_value = stock_array[current_day + 1]
    if current_selling_value.nil?
      current_selling_value = stock_array[current_day]
    end
    if tomorrows_price == 0 || tomorrows_price < current_selling_value
      tomorrows_price = current_selling_value
    else
      tomorrows_price
    end
    selling_day = stock_array.index(tomorrows_price)

    #Getting the purchasing value and day
    if purchasing_price == 0 || (todays_price < purchasing_price && stock_array.index(todays_price) < (stock_array.index(purchasing_price) && stock_array.index(tomorrows_price)))
      purchasing_price = todays_price
    else
      purchasing_price
    end
    purchasing_day = stock_array.index(purchasing_price)

  end
  # Returning the result
  p result.push(purchasing_day, selling_day)
end

stock_picker([7, 5, 6, 15, 17, 11, 3, 4, 8, 9])