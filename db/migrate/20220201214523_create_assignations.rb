class CreateAssignations < ActiveRecord::Migration[6.1]
  def change
    create_table :assignations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :line, null: false, foreign_key: true
      t.string :status
      t.boolean :completed

      t.timestamps
    end
  end
end
