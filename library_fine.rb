#!/bin/ruby

require 'json'
require 'stringio'

# Complete the libraryFine function below.
def libraryFine(d1, m1, y1, d2, m2, y2)
  if y2 < y1
    10_000
  elsif y2 == y1 && m2 < m1
    500 * (m1 - m2)
  elsif y2 == y1 && m2 == m1 && d2 < d1
    15 * (d1 - d2)
  else
    0
  end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

d1M1Y1 = gets.rstrip.split

d1 = d1M1Y1[0].to_i

m1 = d1M1Y1[1].to_i

y1 = d1M1Y1[2].to_i

d2M2Y2 = gets.rstrip.split

d2 = d2M2Y2[0].to_i

m2 = d2M2Y2[1].to_i

y2 = d2M2Y2[2].to_i

result = libraryFine d1, m1, y1, d2, m2, y2

fptr.write result
fptr.write "\n"

fptr.close
