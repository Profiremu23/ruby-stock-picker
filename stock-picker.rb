def stock_picker(stock_array)
  stock_array.each_with_index do |price, index|
    buying_stock = price
    selling_stock = stock_array[index + 1]

    if buying_stock.nil?
      buying_stock = price[index]
    end
    if selling_stock.nil?
      selling_stock = stock_array[index]
    end

    buying_day = stock_array.index(buying_stock)
    selling_day = stock_array.index(selling_stock)
    max_profit = selling_stock - buying_stock
    
    #if selling_stock < buying_stock
    #  selling_stock = price
    #end

    #if buying_stock < selling_stock
    #  buying_stock_checker = stock_array[index += 1]
    #  selling_stock_checker = stock_array[index += 1]
    #end

    #if selling_stock < selling_stock_checker
    #  selling_stock = selling_stock_checker
    #end

    #if (selling_stock - buying_stock) > max_profit
    #  max_profit = selling_stock - buying_stock
    #end

    result = Array.new
    p result.push(buying_day, selling_day)
  end
end

stock_picker([7, 5, 6, 15, 17, 11, 5, 4, 8, 9])