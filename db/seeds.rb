# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Category.create(title: 'Cell phones', id: 1)
Category.create(title: 'Laptops', id: 2)
Category.create(title: 'TVs', id: 3)

Brand.create(id: 1, name: 'Apple', website: 'http://www.apple.com', category_id: 1)
Brand.create(id: 2, name: 'ThinkPad', website: 'http://www.apple.com', category_id: 2)
Brand.create(id: 3, name: 'Samsung', website: 'http://www.apple.com', category_id: 2)
Brand.create(id: 4, name: 'LG', website: 'http://www.apple.com', category_id: 3)
Brand.create(id: 5, name: 'Sony', website: 'http://www.apple.com', category_id: 2)
Brand.create(id: 6, name: 'Nokia', website: 'http://www.apple.com', category_id: 1)
Brand.create(id: 7, name: 'Dell', website: 'http://www.apple.com', category_id: 2)

Consumer.create(id: 1, name: 'Ann', picture: 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-snc4/157346_1502258_2050311173_n.jpg')
Consumer.find(1).influences.create(brand_id: 1, influence: 30)
Consumer.find(1).influences.create(brand_id: 2, influence: 10)
Consumer.find(1).influences.create(brand_id: 3, influence: 12)
Consumer.find(1).influences.create(brand_id: 4, influence: 17)

Consumer.create(id: 2, name: 'Peter', picture: 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-snc4/173705_620629187_1455212175_n.jpg')
Consumer.find(2).influences.create(brand_id: 1, influence: 24)
Consumer.find(2).influences.create(brand_id: 2, influence: 19)
Consumer.find(2).influences.create(brand_id: 3, influence: 14)
Consumer.find(2).influences.create(brand_id: 4, influence: 14)
Consumer.find(2).influences.create(brand_id: 5, influence: 12)
Consumer.find(2).influences.create(brand_id: 6, influence: 15)
Consumer.find(2).influences.create(brand_id: 7, influence: 17)

Consumer.create(id: 3, name: 'Judy', picture: 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-ash2/274144_581365660_2889164_n.jpg')
Consumer.find(2).influences.create(brand_id: 1, influence: 4)
Consumer.find(2).influences.create(brand_id: 2, influence: 13)
Consumer.find(2).influences.create(brand_id: 5, influence: 41)
Consumer.find(2).influences.create(brand_id: 6, influence: 5)
Consumer.find(2).influences.create(brand_id: 7, influence: 24)

Activity.create(id:1, text: 'I just bought a new Apple phone', consumer_id: 2, category_id: 1)
Activity.create(id:2, text: 'Can\'t decide between a Samsung phone and one from HTC', consumer_id: 3, category_id: 1)
Activity.create(id:3, text: 'Man I hate my old pc, Dell sucks', consumer_id: 2, category_id: 2)
Activity.create(id:4, text: 'watching movies tonight on my LG tv', consumer_id: 1, category_id: 3)
