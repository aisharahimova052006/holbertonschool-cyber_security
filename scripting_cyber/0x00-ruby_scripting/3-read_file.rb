#!/usr/bin/env ruby
require 'json'

def read_file(path)
  JSON.parse(File.read(path))
rescue
  {}
end
