#! /usr/bin/env ruby

def fizzbuzz(number_to_calc)
    for i in 1..number_to_calc do
        if i % 15 == 0
            puts "fizzbuzz"
        elsif i % 3 == 0
            puts "fizz"
        elsif i % 5 == 0
            puts "buzz"
        else
            puts i.to_s
        end
    end
end

# Verify a file is passed as a parameter - otherwise return usage
if ARGV.empty?
    puts 'Incorrect parameters were provided.  Usage:'
    puts $0 + ' fizzbuzz_value_to_print'
    exit
end

fizzbuzz(ARGV[0].to_i)