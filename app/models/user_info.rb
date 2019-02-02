class UserInfo < ApplicationRecord
	belongs_to :user
	enum gender: [:male, :female]
	enum marital_status: [:single, :married]
end
