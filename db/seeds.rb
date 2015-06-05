# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Outfit.destroy_all
Tag.destroy_all
User.destroy_all

u1 = User.create :name => 'Jennifer Short' , :location => 'Belgium', :password => 'chicken', :password_confirmation => 'chicken', :username => 'JennyShort', :picture => 'https://i.s-jcrew.com/is/image/jcrew/2015june-womens-refresh2-na8?scl=1&scale=0.6667&fmt=jpeg&qlt=90,0&resMode=sharp&op_usm=.1,0,0,0' 
u2 = User.create :name => 'Mitch Monroe', :location => 'Sydney', :password => 'chicken', :password_confirmation => 'chicken', :username => 'Mitchy', :picture => 'http://2.bp.blogspot.com/-GA113yxeRbI/T2Ib7y0iQ9I/AAAAAAAAGm0/yDl3ubXathk/s1600/jacket_1.jpeg'

o1 = Outfit.create :user_id => u2.id, :title => 'Weekendwear', :description => 'Good looks for weekends' , :image => 'http://www.selectism.com/news/wp-content/uploads/2010/07/j-crew-fall-2010-lookbook-selectism-10.jpg' 
o2 = Outfit.create :user_id => u2.id, :title => 'Party', :description => 'casual party wear', :image => 'http://www.selectism.com/news/wp-content/uploads/2010/07/j-crew-fall-2010-lookbook-selectism-09.jpg'
o3 = Outfit.create :user_id => u2.id, :title => 'Office', :description => 'office wear', :image => 'http://www.selectism.com/news/wp-content/uploads/2010/07/j-crew-fall-2010-lookbook-selectism-07.jpg' 

o4 = Outfit.create :user_id => u1.id, :title => 'Polo wear', :description => 'for office polo party', :image => 'http://3.bp.blogspot.com/-9MRF3Os1ej4/Twgvare0YTI/AAAAAAAAEUw/0BoC8kjiRt0/s400/New+J.Crew+Mens+and+Womens+Fashion+%252810%2529.jpg'
o5 = Outfit.create :user_id => u1.id, :title => 'Orange coat', :description => 'good coat for travel', :image => 'http://4.bp.blogspot.com/-CSICuu9A0bE/TwgvZUZF6nI/AAAAAAAAEUo/rxFR6Fm79UA/s400/New+J.Crew+Mens+and+Womens+Fashion+%25289%2529.jpg'
o6 = Outfit.create :user_id => u1.id, :title => 'Robins engagement', :description => 'for Robins engagement dinner event', :image => 'http://1.bp.blogspot.com/-MZiqrxB9PJ8/TwgvYUQYURI/AAAAAAAAEUg/5mjEuoCkyxg/s400/New+J.Crew+Mens+and+Womens+Fashion+%25288%2529.jpg'
o7 = Outfit.create :user_id => u1.id, :title => 'Versatile skirt', :description => 'easy styling skirt', :image => 'http://2.bp.blogspot.com/-FudOoNmF60U/TwgvTclDiWI/AAAAAAAAET4/1iIgctba7OE/s400/New+J.Crew+Mens+and+Womens+Fashion+%25283%2529.jpg'
o8 = Outfit.create :user_id => u1.id, :title => 'Puffy vest', :description => 'warmth in layers', :image => 'http://1.bp.blogspot.com/-f7aOAE_FVuE/TwgvSYW0EpI/AAAAAAAAETw/1DwAWno_y3g/s400/New+J.Crew+Mens+and+Womens+Fashion+%25282%2529.jpg'
o9 = Outfit.create :user_id => u1.id, :title => 'Color block', :description => 'good for winter', :image => 'http://1.bp.blogspot.com/-_y7aqlSYp5M/TwgvRS7SE5I/AAAAAAAAETo/75i88wGdfVU/s400/New+J.Crew+Mens+and+Womens+Fashion+%25281%2529.jpg'
o10 = Outfit.create :user_id => u1.id, :title => 'Fancy dress', :description => 'good dress for robins wedding', :image => 'http://1.bp.blogspot.com/-3joWWoKBsOM/TwgvVtGsNVI/AAAAAAAAEUI/X3IHGPUcjIk/s400/New+J.Crew+Mens+and+Womens+Fashion+%25285%2529.jpg'

o11 =  Outfit.create :user_id => u2.id, :title => 'Skiing', :description => 'for skiing', :image => 'http://4.bp.blogspot.com/-jYeOnZNr2bM/TwgvN0dj2_I/AAAAAAAAETI/Rg05yNpJOXo/s400/New+J.Crew+Mens+and+Womens+Fashion+%252812%2529.jpg'
o12 = Outfit.create :user_id => u2.id, :title => 'Suit alternative', :description => 'for robins wedding', :image => 'http://1.bp.blogspot.com/-klvosk73Yh0/TwgvO7Knt3I/AAAAAAAAETQ/8597EHj5MLM/s400/New+J.Crew+Mens+and+Womens+Fashion+%252813%2529.jpg'


# u2.outfits << o1 << o2 << o3 << o11 < o12
# u1.outfits << o4 << o5 << o6 << o7 << o8 << o9 << o10


