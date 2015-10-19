### Driver Code

require_relative 'config/application'
require 'byebug'
require 'sqlite3'
require_relative "app/views/task_views.rb"

case ARGV[0]
  when "list"
    TaskViews.show(Task.all)
  when "add"
    TaskViews.add
  when "delete"
    TaskViews.delete
  when "complete"
    TaskViews.complete
end