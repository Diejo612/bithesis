class Task < ApplicationRecord
  belongs_to :station
  has_many :taskstatuses
  has_one_attached :photo
end
