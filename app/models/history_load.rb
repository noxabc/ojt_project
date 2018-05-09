class HistoryLoad < ApplicationRecord
  belongs_to :user

  validates :amount_loaded, presence: true
end
