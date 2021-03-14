#!/bin/ruby

require 'json'
require 'stringio'

# Complete the cavityMap function below.
def cavityMap(grid)
grid = grid.map {|x| x.split('')}
n = grid.length
result = []

for i in (0..n-1)
    for j in (0..n-1)
        if i==0 || i==n-1 || j==0 || j==n-1
            next
        end
        if (grid[i-1]!=nil && grid[i+1]!=nil && grid[i][j-1]!=nil &&
            grid[i][j+1]!=nil)
            if (grid[i][j] > grid[i-1][j] &&
                grid[i][j] > grid[i+1][j] &&
                grid[i][j] > grid[i][j+1] &&
                grid[i][j] > grid[i][j-1])
                grid[i][j] = 'X'
            end
        end
    end
    
    result << grid[i].join('')    
end

result
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

grid = Array.new(n)

n.times do |i|
    grid_item = gets.to_s.rstrip
    grid[i] = grid_item
end

result = cavityMap grid

fptr.write result.join "\n"
fptr.write "\n"

fptr.close()

