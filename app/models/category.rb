class Category < ActiveRecord::Base
  
  has_many :offers

  attr_accessible :name_category, :category_id
  
  def to_s
    "#{name_category}"
  end
end
