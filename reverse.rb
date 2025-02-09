#! /usr/bin/env ruby

def reverse(text)
    text_out = ""
    for i in (text.length - 1).downto(0) do
        text_out << text[i]
    end

    text_out
end

# Verify a file is passed as a parameter - otherwise return usage
if ARGV.empty?
    puts 'Incorrect parameters were provided.  Usage:'
    puts $0 + ' text_to_reverse'
    exit
end

puts reverse(ARGV[0])