class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :color
      t.string :type_car
      t.float :weight

      t.timestamps
    end
  end
end
