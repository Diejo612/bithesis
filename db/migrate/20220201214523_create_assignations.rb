class CreateAssignations < ActiveRecord::Migration[6.1]
  def change
    create_table :assignations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :line, null: false, foreign_key: true
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
