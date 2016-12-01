require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'item with no name not valid' do
  	item = Item.new

  	item.save
  	refute item.valid?
  end

  test 'item is valid with name ,description and seller' do
  	item = Item.new

  	item.title = 'Item'
  	item.description = 'description'
  	item.seller = 'Name here'

  	item.save
  	assert item.valid?
  end
end
