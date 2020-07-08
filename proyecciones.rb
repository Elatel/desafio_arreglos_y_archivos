data = open('ventas_base.txt').read.chomp.split(',')
array = []
n = data.count
n.times do |i|
    array.push data[i].to_i
end

def proyections_first(array)
    first_half = []
    second_half = []
    sum_first = 0
    sum_second = 0
    n = array.count
    n.times do |i|
        if i <= 5
            first_half.push array[i]
        elsif i > 5
            second_half.push array[i]
        end
    end

    first_half.each do |i|
        sum_first += i.to_f
    end

    second_half.each do |i|
        sum_second += i.to_f
    end
    final_number = (sum_first * 1.1) + sum_second
    final_number2 = sum_first + (sum_second * 1.2)
    
    final_number_float = final_number.truncate(2)
    final_number2_float =  final_number2.truncate(2)
    final_data = []
    final_data.push final_number_float, final_number2_float


    require 'CSV'
    CSV.open("resultados.csv", "w") do |csv|
        final_data.each do |i|
            csv << [i]
        end
    end
end

proyections_first(array)







    
