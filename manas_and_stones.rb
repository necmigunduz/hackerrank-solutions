#!/bin/ruby

require 'json'
require 'stringio'

# Complete the stones function below.
def stones(n, a, b)
    ar=[0]
   (n-1).times do |val|
       tmp=[]
        ar.each do |v|
            tmp << v+a if !tmp.include?(v+a)
            tmp << v+b if !tmp.include?(v+b)
        end
    ar=tmp
   end
  ar.sort
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

t = gets.to_i

t.times do 
    n = gets.to_i

    a = gets.to_i

    b = gets.to_i

    result = stones n, a, b

    fptr.write result.join " "
    fptr.write "\n"
end

fptr.close()

