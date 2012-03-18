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

Brand.create(id: 1, name: 'Apple', website: 'http://www.apple.com', category_id: 1, picture: '/images/apple-logo.jpeg')
Brand.create(id: 2, name: 'ThinkPad', website: 'http://www.apple.com', category_id: 2, picture: '/images/Thinkpad-Logo.jpg')
Brand.create(id: 3, name: 'Samsung', website: 'http://www.apple.com', category_id: 2, picture: '/images/samsung-logo.jpg')
Brand.create(id: 4, name: 'LG', website: 'http://www.apple.com', category_id: 3, picture: '/images/lg_logo.jpg')
Brand.create(id: 5, name: 'Sony', website: 'http://www.apple.com', category_id: 2, picture: '/images/sony_400.gif')
Brand.create(id: 6, name: 'Nokia', website: 'http://www.apple.com', category_id: 1, picture: '/images/nokia-logo.jpg')
Brand.create(id: 7, name: 'Dell', website: 'http://www.apple.com', category_id: 2, picture: '/images/dell_logo.jpg')
Brand.create(id: 8, name: 'Motorola', website: 'http://www.apple.com', category_id: 1, picture: '/images/motorola_logo.jpg')

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
Consumer.find(2).influences.create(brand_id: 8, influence: 21)

Consumer.create(id: 3, name: 'Judy', picture: 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-ash2/274144_581365660_2889164_n.jpg')
Consumer.find(2).influences.create(brand_id: 1, influence: 4)
Consumer.find(2).influences.create(brand_id: 2, influence: 13)
Consumer.find(2).influences.create(brand_id: 5, influence: 41)
Consumer.find(2).influences.create(brand_id: 6, influence: 5)
Consumer.find(2).influences.create(brand_id: 7, influence: 24)

Activity.create(id:1, text: 'I just bought a new <strong>Apple</strong> phone', consumer_id: 2, category_id: 1)
Activity.create(id:2, text: 'Can\'t decide between a <strong>Samsung</strong> phone and one from HTC', consumer_id: 3, category_id: 1)
Activity.create(id:3, text: 'Man I hate my old pc, <strong>Dell</strong> sucks', consumer_id: 2, category_id: 2)
Activity.create(id:4, text: 'watching movies tonight on my <strong>LG</strong> tv', consumer_id: 1, category_id: 3)
Activity.create(id:5, text: 'Torn between these two (<strong>Asus</strong> and <strong>Motorola</strong>) tablets. What do you think guys?<br/><br/><img width="200" src="/orangeflex/images/comparison.jpg">', consumer_id: 1, category_id: 1)
Activity.create(id:6, text: 'Excited about my new <strong>Apple</strong> iPad 3!', consumer_id: 1, category_id: 1)
Activity.create(id:7, text: 'Anyone knows how to copy my pictures to <strong>Apple</strong> iPad3', consumer_id: 1, category_id: 1)
