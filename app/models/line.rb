class Line < ApplicationRecord
  has_many :assignations
  has_many :stations
end
