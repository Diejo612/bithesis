class AddFieldToStation < ActiveRecord::Migration[6.1]
  def change
    add_column :stations, :abrv, :string
  end
end
