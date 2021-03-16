#!/bin/ruby

require 'json'
require 'stringio'

# Complete the workbook function below.
def workbook(n, k, arr)
    page = 1
    problems = []
    special_problems = 0 
    n.times do |i|
      problems = arr[i]
      for p in 1..problems
        special_problems += 1 if p == page
        page += 1 if p != problems && p % k == 0
      end
      page += 1
    end
    special_problems
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

nk = gets.rstrip.split

n = nk[0].to_i

k = nk[1].to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = workbook n, k, arr

fptr.write result
fptr.write "\n"

fptr.close()

