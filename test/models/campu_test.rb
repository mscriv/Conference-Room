# == Schema Information
#
# Table name: campus
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  city         :string(255)
#  state        :string(255)
#  phone_number :string(255)
#  zip_code     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

require 'test_helper'

class CampuTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end