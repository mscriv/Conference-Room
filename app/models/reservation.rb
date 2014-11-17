# == Schema Information
#
# Table name: reservations
#
#  id          :integer          not null, primary key
#  date        :string(255)
#  starts_at   :string(255)
#  ends_at     :string(255)
#  room_id     :integer
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#  event_title :string(255)
#

class Reservation < ActiveRecord::Base
  belongs_to :room
  belongs_to :user

  validates :date, :starts_at, :ends_at, :user_id, :room_id,  :event_title, presence: true


end
