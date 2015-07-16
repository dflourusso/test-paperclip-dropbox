class User < ActiveRecord::Base
  has_attached_file :avatar,
  :storage => :dropbox,
  :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
  :styles => { :medium => "300x300", :thumb => "100x100", :large => "1000X1000" },
  :dropbox_options => {
    :path => proc { |style| "#{style}/#{id}_#{avatar.original_filename}" }
  }
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
