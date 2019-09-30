class Input < ApplicationRecord
  validates :people_number, presence: true
  validates :people_number, length: { in: 1..2 }  # [1文字以上75文字以下]
  validates :people_number, numericality: :only_integer

  validates :recruit_percent, presence: true ##空NG
  validates :recruit_percent, length: { in: 1..4 }  # [1文字以上75文字以下]
  validates :recruit_percent, numericality: :only_integer
end
