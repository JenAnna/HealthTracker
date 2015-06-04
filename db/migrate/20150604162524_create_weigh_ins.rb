class CreateWeighIns < ActiveRecord::Migration
  def change
    create_table :weigh_ins do |t|
      t.integer :weight
      t.string :units

      t.timestamps null: false
    end
  end
end
