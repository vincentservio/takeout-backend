class CreateTakeouts < ActiveRecord::Migration[6.0]
  def change
    create_table :takeouts do |t|
      t.string :name
      t.integer :score
      t.string :comment
      t.string :best_order

      t.timestamps
    end
  end
end
