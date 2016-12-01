require 'test_helper'

class BidTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
  	@item = items(:one)
  end

  test 'should not save empty bid' do
  	bid = Bid.new

  	bid.save
  	refute bid.valid?
  end

  test 'should save valid bid' do
  	bid = Bid.new

  	bid.item = @item
  	bid.bidder = 'Joe Bloggs'
  	bid.value = 30.9

  	bid.save
  	assert bid.valid?
  end
end
