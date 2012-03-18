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

  def top_influencer
    @top_value = 0
    @top_influencer
    Influence.find_all_by_brand_id(id).each do |influence|
      if influence.influence > @top_value
        @top_value = influence.influence
        @top_influencer = influence.consumer
      end
    end

    return @top_influencer
  end
end
