# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  role            :string(25)       default("student")
#  campus_id       :integer
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "User's exist" do
    assert true
  end
end
