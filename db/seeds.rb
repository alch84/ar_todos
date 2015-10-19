require 'faker'
require 'rubygems'
require 'active_record'
require 'byebug'
require_relative '../app/models/task'

3.times do
  Task.create(task: Faker::Company.bs, status: false)
end
