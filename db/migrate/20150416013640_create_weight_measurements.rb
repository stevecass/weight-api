class CreateWeightMeasurements < ActiveRecord::Migration
  def change
    create_table :weight_measurements do |t|
      t.references :user
      t.date :taken_on
      t.decimal :weight

      t.timestamps null: false
    end
  end
end
