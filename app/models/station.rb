class Station < ApplicationRecord
  belongs_to :line
  has_many :tasks
end
