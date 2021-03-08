#!/bin/ruby

require 'json'
require 'stringio'

# Complete the insertionSort1 function below.
def insertionSort1(n, arr)
    num = arr[arr.size - 1]
    
    placed = false
    
    (arr.size - 2).downto(0) do |j|
        if(arr[j] > num)
          arr[j + 1] = arr[j]
          p arr
        else
          arr[j + 1] = num
          p arr
          placed = true
          break
        end
    end
    
    if(!placed)
            arr[0] = num
            p arr
    end
end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

insertionSort1 n, arr
