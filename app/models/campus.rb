# == Schema Information
#
# Table name: campuses
#
#  id         :integer          not null, primary key
#  index      :string(255)
#  new        :string(255)
#  show       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Campus < ActiveRecord::Base
  has_many :users
end
