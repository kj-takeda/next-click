class ChangeDataRecruitPercentToInput < ActiveRecord::Migration[5.2]
  def change
    change_column :inputs, :recruit_percent, :integer
  end
end
