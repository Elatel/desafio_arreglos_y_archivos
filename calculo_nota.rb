require 'csv'
CSV.open('notas.csv').readlines
data = CSV.open('notas.csv').readlines

def nota_mas_alta(data)
   
    numbers = data.map { |x| x.to_i }
   
    best_grade = numbers.max

end

lines = nota_mas_alta(data[0])



# File.write('nota_mas_alta.data', lines)
CSV.open("nota_mas_alta.csv", "w") do |csv|
    csv << [lines]
end