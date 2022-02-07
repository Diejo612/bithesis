class AddFieldToTask < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :auto_check, :boolean, default: false
  end
end
