class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :birth_date
      t.string :city
      t.integer :nb_of_book_published

      t.timestamps
    end
  end
end
