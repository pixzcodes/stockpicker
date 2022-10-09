
def stock_picker (array)
    low_price = array[0]
    min_i = 0
    profit = 0
    days = [0,0]

    array.each_with_index do |price, index|
        if price < low_price
            low_price = price
            min_i = index
            next
        end

        if price - low_price > profit
            profit = price - low_price
            days = [min_i, index]
        end
    end
    days
end

stock_picker([17,3,6,9,15,8,6,1,10])