class TaskViews
  def self.show(array)
    array.each_with_index do |x,i|
      puts "#{i+1}. #{array[i].task} [#{array[i].status}]"
    end
  end
end