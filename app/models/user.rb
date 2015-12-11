# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
  has_many :posts
  has_many :comments

  acts_as_voter


  has_secure_password
  # note: has_secure_password automatically adds validations
  # for presence of password, password length < 72 characters,
  # and password_confirmation

  validates :password, length: { minimum: 3 }, on: :create

  validates :email,
    presence: true,
    uniqueness: true,
    format: {
      with: /@/,
      message: "not a valid format"
    }

end
