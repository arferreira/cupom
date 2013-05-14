class AddAttachmentEmpresasToImages < ActiveRecord::Migration
  def self.up
    add_attachment :empresas, :image
  end

  def self.down
    remove_attachment :empresas, :image
  end
end
