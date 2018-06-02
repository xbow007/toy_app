class User < ApplicationRecord
	has_many :microposts
	validates :name,  length: { maximum: 60 },  presence: true
	validates :email, length: { maximum: 140 }, presence: true, uniqueness: true
end
