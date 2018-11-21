class Show < ActiveRecord::Base 
  
  def self.highest_rating
    column.maximum
  end
  
end