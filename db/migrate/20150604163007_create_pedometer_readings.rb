class CreatePedometerReadings < ActiveRecord::Migration
  def change
    create_table :pedometer_readings do |t|
      t.integer :steps
      t.integer :calories_burned

      t.timestamps null: false
    end
  end
end
