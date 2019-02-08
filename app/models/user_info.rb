class UserInfo < ApplicationRecord
	belongs_to :user
	enum gender: [:male, :female]
	enum marital_status: [:single, :married]
	has_one_attached :avatar
	has_one_attached :header_image
	has_many_attached :uploads



end
