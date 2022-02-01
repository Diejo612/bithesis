class CreateTaskstatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :taskstatuses do |t|
      t.references :task, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :completed

      t.timestamps
    end
  end
end
