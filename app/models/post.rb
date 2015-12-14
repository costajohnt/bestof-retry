# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

class Post < ActiveRecord::Base
	has_many :comments
	belongs_to :user

	extend FriendlyId
	friendly_id :title, use: :slugged
	
	def self.search(search)
		where("title LIKE ?", "%#{search}%")
	end
end
