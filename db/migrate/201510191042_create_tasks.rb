require_relative '../../config/application'

class CreateTasks < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table    :tasks do |t|
        t.index     :id
        t.string    :task
        t.boolean   :status
        t.timestamps null:false
    end
  end
end
