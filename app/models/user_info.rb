class UserInfo < ApplicationRecord
	belongs_to :user
	enum gender: [:male, :female]
	enum marital_status: [:single, :married]
	has_one_attached :image
	

end
