#!/bin/ruby

require 'json'
require 'stringio'

# Complete the insertionSort1 function below.
def insertionSort1(_n, arr)
    l = arr.length - 1
    last = arr[l]

    while  l-1 >= 0 && arr[l-1] > last
        if last < arr[l-1]  
            arr[l] = arr[l-1] 
            arr.each{|v| print "#{v} "}
            puts
        end
        l -= 1
    end
    arr[l] = last
    arr.each{|v| print "#{v} "}  
end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)
insertionSort1 n, arr

