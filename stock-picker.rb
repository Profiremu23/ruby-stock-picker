def stock_picker(stock_array)
  stock_array.each_with_index do |price, index|
    price = stock_array
    index = 0
    buying_stock_checker = price[index]
    selling_stock_checker = price[index += 1]
    buying_stock = buying_stock_checker
    selling_stock = selling_stock_checker
    max_profit = selling_stock - buying_stock
    puts buying_day = buying_stock_checker[index]
    puts selling_day = selling_stock_checker[index]

    #if selling_stock < buying_stock
    #  selling_stock_checker[index + 1]
    #end

    #if buying_stock < buying_stock_checker
    #  buying_stock = buying_stock_checker
    #end

    #if selling_stock < selling_stock_checker
    #  selling_stock = selling_stock_checker
    #end

    #if (selling_stock - buying_stock) > max_profit
    #  max_profit = selling_stock - buying_stock
    #end
    #puts max_profit
  end
end

stock_picker([7, 5, 6, 15, 17, 11, 5, 4, 8, 6])