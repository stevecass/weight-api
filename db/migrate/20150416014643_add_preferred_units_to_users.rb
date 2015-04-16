class AddPreferredUnitsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :preferred_unit, :string, null:false, default: 'lb'
  end
end
