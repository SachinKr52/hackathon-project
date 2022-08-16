class AddAssigneeToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :assignee, :string
  end
end
