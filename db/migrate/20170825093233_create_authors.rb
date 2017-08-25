class CreateAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :authors do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.references :book, index: true
      t.timestamps
    end
    add_foreign_key :authors, :books
  end
end
