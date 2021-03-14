#!/bin/ruby

require 'json'
require 'stringio'

# Complete the timeInWords function below.
def get_word(num)
    teen = "teen"
    case num
        when 0; return "o' clock"
        when 1; return "one"
        when 2; return "two"
        when 3; return "three"
        when 4; return "four"
        when 5; return "five"
        when 6; return "six"
        when 7; return "seven"
        when 8; return "eight"
        when 9; return "nine"
        when 10; return "ten"
        when 11; return "eleven"
        when 12; return "twelve"
        when 13; return "thirteen"
        when 14,16,17,19; return get_word(num.to_s[1].to_i)+teen
        when 15; return "fif"+teen
        when 18; return "eigh"+teen
        when 20; return "twenty"
        when 21..29; return get_word(20)+ " " + get_word(num.to_s[1].to_i)
        else return "NaN"
    end
end

def timeInWords(h, m)
    case m 
        when 0; return "#{get_word(h)} #{get_word(m)}"
        when 1; return "#{get_word(m)} minute past #{get_word(h)}"
        when 2...15; return "#{get_word(m)} minutes past #{get_word(h)}"
        when 15; return "quarter past #{get_word(h)}"
        when 16...30; return "#{get_word(m)} minutes past #{get_word(h)}"
        when 30; return "half past #{get_word(h)}"
        when 31...45; return "#{get_word(60-m)} minutes to #{get_word(h+1)}"
        when 45; return "quarter to #{get_word(h+1)}"
        when 46...60; return "#{get_word(60-m)} minutes to #{get_word(h+1)}"
        else return "NaN"
    end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

h = gets.to_i

m = gets.to_i

result = timeInWords h, m

fptr.write result
fptr.write "\n"

fptr.close()

