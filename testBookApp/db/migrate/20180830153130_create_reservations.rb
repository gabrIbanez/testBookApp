class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :borrower, foreign_key: true
      t.references :book, foreign_key: true
      t.date :start_time
      t.date :end_time
      t.boolean :returned

      t.timestamps
    end
  end
end
