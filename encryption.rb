#!/bin/ruby

require 'json'
require 'stringio'
require 'cmath' 


# Complete the encryption function below.
def encryption(s)

    x = CMath.sqrt(s.length) 
    b = x.floor
    c = x.ceil
    j = 0
    result = ""
    
    for i in 0...c do
        j = i
        while j < s.length
            result << s[j]
            j += c
        end
        result += " "
    end
    
    result
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.to_s.rstrip

result = encryption s

fptr.write result
fptr.write "\n"

fptr.close()
