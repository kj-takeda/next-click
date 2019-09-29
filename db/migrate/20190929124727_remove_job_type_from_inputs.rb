class RemoveJobTypeFromInputs < ActiveRecord::Migration[5.2]
  def change
    remove_column :inputs, :job_type, :string
  end
end
