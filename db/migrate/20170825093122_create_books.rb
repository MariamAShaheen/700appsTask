class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :short_name
      t.string :full_name, null: false
      t.integer :year
      t.timestamps
    end
  end
end
