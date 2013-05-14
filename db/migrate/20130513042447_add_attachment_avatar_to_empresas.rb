class AddAttachmentAvatarToEmpresas < ActiveRecord::Migration
  def self.up
    add_attachment :empresas, :avatar
  end

  def self.down
    remove_attachment :empresas, :avatar
  end
end
