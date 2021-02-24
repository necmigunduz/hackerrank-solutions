#!/bin/ruby

#
# Complete the pageCount function below.
#
def pageCount(n, p)
    if (n-p) > p && p.odd?
        p/2
    elsif (n-p) > p && p.even?
        (p.to_f/2).to_f.ceil
    elsif (n-p) < p && p.odd?
        (((n-p).to_f)/2).to_f.ceil
    else
        (n-p)/2
    end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

p = gets.to_i

result = pageCount n, p

fptr.write result
fptr.write "\n"

fptr.close()
