class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :name
      t.decimal  :conversion , precision: 3, scale: 2
      t.timestamps
    end
  end
end
