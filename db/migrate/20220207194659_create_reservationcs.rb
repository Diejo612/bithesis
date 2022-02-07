class CreateReservationcs < ActiveRecord::Migration[6.1]
  def change
    create_table :reservationcs do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :start_time

      t.timestamps
    end
  end
end
