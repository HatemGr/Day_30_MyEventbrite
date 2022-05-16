class Attendance < ApplicationRecord
  belong_to :user
  belongs_to :event
end
