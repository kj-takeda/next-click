class CreateInputs < ActiveRecord::Migration[5.2]
  def change
    create_table :inputs do |t|
      t.integer :people_number
      t.string :job_type
      t.timestamps
    end
  end
end
