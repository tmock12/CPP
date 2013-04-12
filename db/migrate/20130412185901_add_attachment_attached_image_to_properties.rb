class AddAttachmentAttachedImageToProperties < ActiveRecord::Migration
  def self.up
    change_table :properties do |t|
      t.attachment :attached_image
    end
  end

  def self.down
    drop_attached_file :properties, :attached_image
  end
end
