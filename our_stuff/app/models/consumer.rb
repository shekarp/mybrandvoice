class Consumer < ActiveRecord::Base
  has_many :influences
  has_one :facebook

end
