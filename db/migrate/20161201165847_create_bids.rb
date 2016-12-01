class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.belongs_to :item, index: true, foreign_key: true, null: false
      t.string :bidder, null: false
      t.decimal :value, null: false

      t.timestamps null: false
    end
  end
end
