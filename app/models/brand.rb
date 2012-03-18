class Brand < ActiveRecord::Base
  belongs_to :category

  def influence
    @influence = 0;
    @count = 0
    Influence.find_all_by_brand_id(id).each do |influence|
      @influence = @influence + influence.influence
      @count = @count + 1
    end
    return @influence / @count
  end
end
