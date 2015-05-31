# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Outfit.destroy_all
Tag.destroy_all


u1 = User.create :name => 'Jane'
u2 = User.create :name => 'Mitch'
u3 = User.create :name => 'Stefan'

o1 = Outfit.create :title => 'Weekendwear'
o2 = Outfit.create :title => 'Party'
o3 = Outfit.create :title => 'Date'

t1 = Tag.create :tag => 'Jeans'
t2 = Tag.create :tag => 'Blouse'
t3 = Tag.create :tag => 'Shirts'

u1 << o1
