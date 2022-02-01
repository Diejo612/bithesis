class Task < ApplicationRecord
  belongs_to :station
  has_many :taskstatuses
end
