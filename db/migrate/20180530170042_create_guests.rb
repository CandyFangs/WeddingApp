class CreateGuests < ActiveRecord::Migration[5.1]
  def change
    create_table :guests do |t|
      t.string :name
      t.boolean :plusone
      t.string :datename
      t.boolean :confirmation
      t.string :side

      t.timestamps
    end
  end
end
