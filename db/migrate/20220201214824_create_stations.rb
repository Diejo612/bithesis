class CreateStations < ActiveRecord::Migration[6.1]
  def change
    create_table :stations do |t|
      t.references :line, null: false, foreign_key: true
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
