class AddUserIds < ActiveRecord::Migration
  def change
    add_column :calorie_intakes, :user_id, :integer
    add_column :pedometer_readings, :user_id, :integer
    add_column :exercises, :user_id, :integer
    add_column :weigh_ins, :user_id, :integer
  end
end
