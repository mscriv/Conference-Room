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

require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
