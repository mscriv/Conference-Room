# == Schema Information
#
# Table name: campuses
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  name       :string(255)
#  city       :string(255)
#  state      :string(255)
#  phone      :string(255)
#  address    :string(255)
#  zip_code   :integer
#

class Campus < ActiveRecord::Base
  has_many :users
  has_many :rooms
  validates :name, presence: true
end
