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

class User < ActiveRecord::Base
  has_secure_password

  validates :name, :campus_id, :role, presence: true

  has_many :reservations
  belongs_to :campus

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false}

  validates :password, length: { minimum: 6}, allow_blank: true


   ROLE = %w[student staff]


  def staff
    self.role == 'staff'
  end

end
