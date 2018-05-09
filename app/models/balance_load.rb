class BalanceLoad < ApplicationRecord
  belongs_to :profile

  validates :amount_loaded, presence: true
  validates :remaining_load, presence: true
end