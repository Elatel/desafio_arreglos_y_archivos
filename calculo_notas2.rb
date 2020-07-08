require 'csv'
CSV.open('notas.csv').readlines
data = CSV.open('notas.csv').readlines

def nota_mas_alta(data)
    best_grades =[]
    data.each do |array_int|
        
        b = array_int.map { |x| x.to_i}   

        best_grades << b.max
    end
   
    best_grades
end

print nota_mas_alta(data)