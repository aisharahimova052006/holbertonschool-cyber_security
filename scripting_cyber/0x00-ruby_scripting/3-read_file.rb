#!/usr/bin/env ruby
require 'json'

def count_user_ids(path)
  JSON.parse(File.read(path))
      .tally { |x| x["userId"] }
      .sort
      .each { |k, v| puts "#{k}: #{v}" }
end
