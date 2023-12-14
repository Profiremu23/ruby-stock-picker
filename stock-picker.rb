def stock_picker(stock_array)

  #Initializing variables
  buying_stock = 0
  purchasing_stock = 0
  selling_stock = 0
  selling_stock_value = 0
  buying_day = 0
  selling_day = 1
  max_profit = 0

  stock_array.each_with_index do |price, index|
    selling_stock = stock_array[index + 1]
    if selling_stock.nil?
      selling_stock = stock_array[index]
    end
    if selling_stock_value == 0 || selling_stock_value < selling_stock
      selling_stock_value = selling_stock
    else
      selling_stock_value
    end
    selling_day = stock_array.index(selling_stock_value)

    buying_stock = price
    if buying_stock.nil?
      buying_stock = price[index]
    end
    if purchasing_stock == 0 || (buying_stock < purchasing_stock && stock_array.index(buying_stock) < (stock_array.index(purchasing_stock) && stock_array.index(selling_stock_value)))
      purchasing_stock = buying_stock
    else
      purchasing_stock
    end
    buying_day = stock_array.index(purchasing_stock)

    max_profit = selling_stock - buying_stock

    result = Array.new
    result.push(buying_day, selling_day)
  end
end

stock_picker([7, 5, 6, 15, 17, 11, 3, 4, 8, 9])