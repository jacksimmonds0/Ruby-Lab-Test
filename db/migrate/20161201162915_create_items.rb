class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :tite, null: false
      t.text :description, null: false
      t.string :seller, null: false
      t.integer :status

      t.timestamps null: false
    end
  end
end
