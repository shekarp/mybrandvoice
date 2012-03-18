class Influence < ActiveRecord::Base
  belongs_to :consumer
  belongs_to :brand
end
