require 'json'
require 'stringio'

# Complete the howManyGames function below.
def howManyGames(p, d, m, s)
    n = (p-m)/d
    dp = [p]git
    i = 1
    j = 0
    n.times do 
        dp << p - (d*i)
        i += 1 
    end  

    total = dp.sum
    if s > total
        purchased_at_min = (s-total)/m
    end
    
    if s < p
        result = 0
    elsif s < total
        sum = p
        dps = [p]
        i = 1
        if s - p > d
            result = 1
        else
            dp.each do |v|
                sum += v
                dps << p - (d*i)
                i += 1
                break if sum > s
            end
        end
        result = dps.length
        
    else 
        result = dp.length+purchased_at_min
    end
    result
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

pdms = gets.rstrip.split

p = pdms[0].to_i

d = pdms[1].to_i

m = pdms[2].to_i

s = pdms[3].to_i

answer = howManyGames p, d, m, s

fptr.write answer
fptr.write "\n"

fptr.close()
