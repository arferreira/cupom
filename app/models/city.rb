class City < ActiveRecord::Base
  has_many :offers
  attr_accessible :name

  def to_s
    "#{name}"
  end

end
