#!/usr/bin/env ruby

require 'optparse'

FILE = "tasks.txt"

def load_tasks
  return [] unless File.exist?(FILE)
  File.readlines(FILE, chomp: true)
end

def save_tasks(tasks)
  File.open(FILE, "w") do |f|
    tasks.each { |t| f.puts(t) }
  end
end

tasks = load_tasks
options = {}

OptionParser.new do |opts|
  opts.banner = "Usage: cli.rb [options]"

  opts.on("-aTASK", "--add TASK", "Add a new task") do |task|
    options[:add] = task
  end

  opts.on("-l", "--list", "List all tasks") do
    options[:list] = true
  end

  opts.on("-rINDEX", "--remove INDEX", "Remove a task by index") do |index|
    options[:remove] = index.to_i
  end

  opts.on("-h", "--help", "Show help") do
    puts opts
    exit
  end
end.parse!

if options[:add]
  tasks << options[:add]
  save_tasks(tasks)
  puts "Task '#{options[:add]}' added."

elsif options[:list]
  puts "Tasks:"
  tasks.each { |task| puts task }

elsif options[:remove]
  index = options[:remove] - 1
  if index >= 0 && index < tasks.length
    removed = tasks.delete_at(index)
    save_tasks(tasks)
    puts "Task '#{removed}' removed."
  end
end
