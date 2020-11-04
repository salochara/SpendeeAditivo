class Expense < ApplicationRecord
  belongs_to :day
  has_one :user, through: :day
end
