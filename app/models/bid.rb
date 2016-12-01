class Bid < ActiveRecord::Base
  belongs_to :item
  validates :bidder, :item, :value, presence: true
end
