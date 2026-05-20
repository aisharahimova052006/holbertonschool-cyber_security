#!/usr/bin/env ruby
require 'json'

def merge_json_files(file1_path, file2_path)
  return unless File.exist?(file1_path) && File.exist?(file2_path)

  begin
    file1_data = JSON.parse(File.read(file1_path))
    file2_data = JSON.parse(File.read(file2_path))
    file1_data = [file1_data] unless file1_data.is_kind_of?(Array)
    file2_data = [file2_data] unless file2_data.is_kind_of?(Array)
    merged_data = file2_data + file1_data

    File.open(file2_path, 'w') do |f|
      f.write(JSON.pretty_generate(merged_data))
    end
  rescue JSON::ParserError => e
    puts "Error parsing JSON: #{e.message}"
  rescue StandardError => e
    puts "An error occurred: #{e.message}"
  end
end
