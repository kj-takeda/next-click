class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :name
      t.integer :week_pv
      t.integer :week_price
      t.timestamps
    end
  end
end
