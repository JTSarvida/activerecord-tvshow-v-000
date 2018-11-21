class Show < ActiveRecord::Base 
  
  def self.highest_rating
    Show.maximum(:rating)
  end
  
  def self.most_popular_show
    popular_show = Show.find_by(self.highest_rating)
    popular_show
  end
  
  def self.lowest_rating
    Show.minimum(:rating)
  end 
  
  def self.least_popular_show
    not_popular_show = Show.find_by(self.lowest_rating)
    not_popular_show
  end 
  
  def self.ratings_sum 
    sum = Show.sum(:ratings)
    sum
  end
end