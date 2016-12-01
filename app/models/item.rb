class Item < ActiveRecord::Base
	has_many :bids
	validates :title, presence: true
	validates :description, presence: true
	validates :seller, presence: true
end
