#! /usr/bin/env ruby

def fib(number_to_calc)
    if number_to_calc < 1
        return 0
    elsif number_to_calc <= 2
        return 1
    end

    fib_arr = [1,1]

    for i in 2..number_to_calc-1 do
        fib_arr.push(fib_arr[i-2] + fib_arr[i-1])
    end

    fib_arr[-1]

end

# Verify a file is passed as a parameter - otherwise return usage
if ARGV.empty?
    puts 'Incorrect parameters were provided.  Usage:'
    puts $0 + ' fibonacci_position_to_calculate'
    exit
end

puts ARGV[0] + ': '+ fib(ARGV[0].to_i).to_s
