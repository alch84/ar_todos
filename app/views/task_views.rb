require 'byebug'

class TaskViews
  def self.show(array)
    array.each_with_index do |x,i|
      puts "#{i+1}. #{array[i].task} [#{array[i].status}]"
    end
  end

  def self.add
    Task.create(task: "#{ARGV[1..-1].join(' ')}", status: false)
    puts "Appended #{ARGV[1..-1].join(' ')} from todo list"
  end

  def self.delete
    Task.destroy_all(id: ARGV[1].to_i)
   "Deleted task number #{[ARGV[1].to_i]}"
  end

  def self.complete
    # byebug
    puts "Completed task number #{[ARGV[1].to_i]}"
    Task.update(ARGV[1].to_i, status: true)
  end
end