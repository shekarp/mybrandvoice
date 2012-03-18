# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Category.create(title: 'Electronics', id: 1)
Brand.create(id: 1, name: 'Apple', website: 'http://www.apple.com', category_id: 1)
Brand.create(id: 2, name: 'ThinkPad', website: 'http://www.apple.com', category_id: 1)
Brand.create(id: 3, name: 'Samsung', website: 'http://www.apple.com', category_id: 1)
Brand.create(id: 4, name: 'LG', website: 'http://www.apple.com', category_id: 1)
Brand.create(id: 5, name: 'Sony', website: 'http://www.apple.com', category_id: 1)
Brand.create(id: 6, name: 'HTC', website: 'http://www.apple.com', category_id: 1)
Brand.create(id: 7, name: 'Dell', website: 'http://www.apple.com', category_id: 1)

Consumer.create(id: 1, name: 'Ann')
Consumer.find(1).influences.create(brand_id: 1, influence: 30)
Consumer.find(1).influences.create(brand_id: 2, influence: 10)
Consumer.find(1).influences.create(brand_id: 3, influence: 12)
Consumer.find(1).influences.create(brand_id: 4, influence: 17)

Consumer.create(id: 2, name: 'Peter')
Consumer.find(2).influences.create(brand_id: 1, influence: 24)
Consumer.find(2).influences.create(brand_id: 2, influence: 19)
Consumer.find(2).influences.create(brand_id: 3, influence: 14)
Consumer.find(2).influences.create(brand_id: 4, influence: 14)
Consumer.find(2).influences.create(brand_id: 5, influence: 12)
Consumer.find(2).influences.create(brand_id: 6, influence: 15)
Consumer.find(2).influences.create(brand_id: 7, influence: 17)