class Task < ApplicationRecord
  validates_presence_of :title
  #  validates_presence_of :user_id
  default_scope -> { order('created_at DESC') }
  belongs_to :user
  scope :completed, -> { where(completed: true) }
  scope :completed, -> { where(completed: false) }
end
