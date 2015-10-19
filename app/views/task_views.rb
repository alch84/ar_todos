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
    self.show(Task.all)
  end

  def self.delete
    Task.all.delete(Task.all[ARGV[1].to_i-1])
   puts "Deleted task number #{[ARGV[1].to_i]}"
   self.show(Task.all)
  end

  def self.complete
    # byebug
    puts "Completed task number #{[ARGV[1].to_i]}"
    Task.all[ARGV[1].to_i-1].update(status:true)
    self.show(Task.all)
  end
end