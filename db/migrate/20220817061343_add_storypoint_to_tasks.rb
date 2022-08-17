class AddStorypointToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :story_point, :integer
  end
end
