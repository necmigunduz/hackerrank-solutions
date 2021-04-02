#!/bin/ruby

require 'json'
require 'stringio'

# Complete the insertionSort2 function below.
def insertionSort2(n, arr)
    i=1
    while  i < arr.length
        arr[0..i] = insertionSort1(arr[0..i])
        arr.each{|v| print "#{v} "}
        puts
        i += 1
    end
end

def insertionSort1(arr)  
    l = arr.length - 1
    store = arr[l]

    while  l-1 >= 0 && arr[l-1] > store
        if store < arr[l-1]  
        arr[l] = arr[l-1] 
        end
        l -= 1
    end
    arr[l] = store
    arr
end


n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

insertionSort2 n, arr

