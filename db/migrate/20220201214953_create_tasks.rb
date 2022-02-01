class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.references :station, null: false, foreign_key: true
      t.string :type
      t.text :comment
      t.string :description
      t.string :video_url

      t.timestamps
    end
  end
end
