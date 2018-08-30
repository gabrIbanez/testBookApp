class CreateBorrowers < ActiveRecord::Migration[5.2]
  def change
    create_table :borrowers do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :birth_date
      t.string :city
      t.boolean :able_to_borrow
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
