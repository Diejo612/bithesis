class CreateStationStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :station_statuses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :station, null: false, foreign_key: true
      t.boolean :completed, default:false

      t.timestamps
    end
  end
end
