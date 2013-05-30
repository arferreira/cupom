class Empresa < ActiveRecord::Base
  has_many :offers
  attr_accessible :contato, :endereco, :name, :image
  has_attached_file :image, :styles => { :original => "315x220>", :medium => "300x300>", :thumb => "100x100>" ,:whiny => false}


  def to_s
    "#{name}"
  end


end
