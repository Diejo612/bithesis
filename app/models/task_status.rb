class TaskStatus < ApplicationRecord
  belongs_to :task
  belongs_to :user
  has_one_attached :photo
end
