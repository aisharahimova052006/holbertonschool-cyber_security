#!/usr/bin/env ruby

def print_arguments
  args = ARGV

  if args.empty?
    puts "No arguments provided."
  else
    args.each_with_index do |arg, i|
      puts "#{i + 1}. #{arg}"
    end
  end
end
