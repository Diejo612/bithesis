class AddIconToLine < ActiveRecord::Migration[6.1]
  def change
    add_column :lines, :icon_tag, :string
    add_column :lines, :abrv, :string
  end
end
