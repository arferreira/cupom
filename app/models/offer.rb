class Offer < ActiveRecord::Base
  belongs_to :category
  belongs_to :city
  belongs_to :empresa
  attr_accessible :address, :contact, :content, :count, :dicount, :final_date, :price, :rules, :start_date, :title, :category_id, :city_id, :avatar, :empresa_id, :por

  has_attached_file :avatar, :styles => { :original => "315x220>", :medium => "300x300>", :thumb => "100x100>", :whiny => false }


  # método de busca
  def self.search(search)
  if search
    where('title LIKE ?', "%#{search}%")
  else
    scoped
  end
  end

end
