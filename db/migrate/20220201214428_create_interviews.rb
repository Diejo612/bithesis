class CreateInterviews < ActiveRecord::Migration[6.1]
  def change
    create_table :interviews do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.text :observation
      t.string :link
      t.string :status

      t.timestamps
    end
  end
end
