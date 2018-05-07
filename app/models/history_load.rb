class HistoryLoad < ApplicationRecord
  belongs_to :profile

  validates :amount_loaded, presence: true
end
