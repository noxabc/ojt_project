class HistoryLog < ApplicationRecord
  belongs_to :profile

  validates :last_name, presence: true
  validates :first_name, presence: true
end
