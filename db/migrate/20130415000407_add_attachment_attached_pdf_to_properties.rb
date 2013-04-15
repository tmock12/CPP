class AddAttachmentAttachedPdfToProperties < ActiveRecord::Migration
  def self.up
    change_table :properties do |t|
      t.attachment :attached_pdf
    end
  end

  def self.down
    drop_attached_file :properties, :attached_pdf
  end
end
