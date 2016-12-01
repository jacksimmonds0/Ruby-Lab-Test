# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
firstItem = Item.where(title: 'First Item').first
firstItem.delete if firstItem

item = Item.create([title: 'First Item', description: 'This is the first item in the list', seller: 'Joe Bloggs', status:1])

