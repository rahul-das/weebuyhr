class Attendance < ApplicationRecord
  belongs_to :user
  paginates_per 10

  scope :valid, -> { where("time_in IS NOT NULL AND time_out IS NOT NULL ") }
  scope :current_month, -> { valid.where(created_at: DateTime.now.beginning_of_month..DateTime.now.end_of_month) }
end
