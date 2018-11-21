class Show < ActiveRecord::Base 
  
  def self.highest_rating
    self.maximum(:rating)
  end
  
  def self.most_popular_show
    popular_show = Show.find_by(self.highest_rating)
    popular_show
  end
  
  def self.lowest_rating
    self.minimum(:rating)
  end 
end