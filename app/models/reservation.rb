# == Schema Information
#
# Table name: reservations
#
#  id         :integer          not null, primary key
#  date       :string(255)
#  starts_at  :string(255)
#  ends_at    :string(255)
#  room_id    :integer
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Reservation < ActiveRecord::Base
  belongs_to :room
  belongs_to :user
end
