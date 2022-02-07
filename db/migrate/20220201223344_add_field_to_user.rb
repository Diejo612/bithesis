class AddFieldToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :phone, :string
    add_column :users, :admited, :boolean, default: false
  end
end
