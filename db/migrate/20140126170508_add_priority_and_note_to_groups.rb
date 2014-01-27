class AddPriorityAndNoteToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :priority, :integer
    add_column :groups, :note, :text
  end
end
