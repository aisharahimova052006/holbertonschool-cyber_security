#!/usr/bin/env ruby
require 'json'

def read_file(file_path)
  file = File.read(file_path)
  JSON.parse(file)
rescue Errno::ENOENT
  {}
rescue JSON::ParserError
  {}
end
