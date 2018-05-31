class AddDefaultValueToShowAttribute < ActiveRecord::Migration[5.1]
  def change
    change_column :guests, :confirmation, :boolean, default: false
  end
end
