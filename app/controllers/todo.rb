### Driver Code

require_relative '../../config/application'
require 'byebug'
require 'sqlite3'

case ARGV[0]
  when "list"
    p Task.all
  when "add"
    Task.create(task: "#{ARGV[1..-1].join(' ')}", status: false)
    puts "Appended #{ARGV[1..-1].join(' ')} from todo list"
  when "delete"
    Task.destroy_all(id: ARGV[1].to_i)
     "Deleted task number #{[ARGV[1].to_i]}"
  when "complete"
    puts "Completed task number #{[ARGV[1].to_i]}"
    Task.update(ARGV[1].to_i, status: true)
end