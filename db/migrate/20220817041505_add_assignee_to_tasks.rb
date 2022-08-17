class AddAssigneeToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :assignee, :string
  end
end
