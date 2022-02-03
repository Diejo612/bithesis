class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :tasks, :type, :tipo
  end
end
