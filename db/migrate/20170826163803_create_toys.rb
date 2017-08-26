class CreateToys < ActiveRecord::Migration[5.1]
  def change
    create_table :toys do |t|
      t.string :name
      t.integer :size
      t.string :color

      t.timestamps
    end
  end
end
