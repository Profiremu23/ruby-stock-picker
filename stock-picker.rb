def stock_picker(stock_array)

  #Initializing variables
  purchasing_stock = 0
  purchasing_day = 0
  selling_stock = 0
  selling_day = 1
  result = Array.new

  stock_array.each_with_index do |current_price, current_day|
    # Getting the selling value and day
    current_selling_value = stock_array[current_day + 1]
    if current_selling_value.nil?
      current_selling_value = stock_array[current_day]
    end
    if selling_stock == 0 || selling_stock < current_selling_value
      selling_stock = current_selling_value
    else
      selling_stock
    end
    selling_day = stock_array.index(selling_stock)

    #Getting the purchasing value and day
    if purchasing_stock == 0 || (current_price < purchasing_stock && stock_array.index(current_price) < (stock_array.index(purchasing_stock) && stock_array.index(selling_stock)))
      purchasing_stock = current_price
    else
      purchasing_stock
    end
    purchasing_day = stock_array.index(purchasing_stock)

  end
  # Returning the result
  p result.push(purchasing_day, selling_day)
end

stock_picker([7, 5, 6, 15, 17, 11, 3, 4, 8, 9])