def chart(array)
    chart = []
    array.each do |x|
        chart.push x * 2 
    end
    
    
    chart.each do |y|
        print "|" + "*" * y 
        print "\n"
        
    end
    
    print ">" + "-" * chart.max


end

chart([5, 3, 2, 5, 10])