#!/usr/bin/env ruby

require 'open-uri'
require 'uri'
require 'fileutils'

if ARGV.length != 2
  puts "Usage: 9-download_file.rb URL LOCAL_FILE_PATH"
  exit 1
end

url = ARGV[0]
path = ARGV[1]

begin
  puts "Downloading file from #{url}..."

  URI.open(url) do |file|
    File.open(path, 'wb') do |out|
      out.write(file.read)
    end
  end

  puts "File downloaded and saved to #{path}."
rescue StandardError => e
  puts "Download failed: #{e.message}"
end
