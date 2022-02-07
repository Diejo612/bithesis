class CreateTaskStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :task_statuses do |t|
      t.references :task, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :completed, default: false
      t.text :comment
      t.string :document_url

      t.timestamps
    end
  end
end
