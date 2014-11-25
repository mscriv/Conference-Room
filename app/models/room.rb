# == Schema Information
#
# Table name: rooms
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  location    :string(255)
#  sq_ft       :integer
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  campus_id   :integer
#

class Room < ActiveRecord::Base
  has_many :photos
  has_many :reservations
  belongs_to :campus
  validates :name, :campus, presence: true

end
