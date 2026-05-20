#!/usr/bin/env ruby
require 'json'
require_relative '3-read_file'

def write_file(path, data)
  File.write(path, JSON.pretty_generate(data))
end

def merge_json_files(file1, file2)
  data1 = read_file(file1)
  data2 = read_file(file2)

  merged = data2.merge(data1)

  write_file(file2, merged)

  puts "Merged JSON written to #{file2}"
end
