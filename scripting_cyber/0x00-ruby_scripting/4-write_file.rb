#!/usr/bin/env ruby
require 'json'
require_relative '3-read_file'

def write_file(file_path, data)
  File.open(file_path, 'w') do |file|
    file.write(JSON.pretty_generate(data))
  end
end

def merge_json_files(file1_path, file2_path)
  data1 = read_file(file1_path)
  data2 = read_file(file2_path)

  merged = data2.merge(data1)

  write_file(file2_path, merged)

  puts "Merged JSON written to #{file2_path}"
end
