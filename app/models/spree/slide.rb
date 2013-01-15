class Spree::Slide < ActiveRecord::Base
  has_attached_file :image

  include Spree::Core::S3Support
  supports_s3 :image

  scope :published, where(:published => true)
  attr_accessible :name, :body, :link_url, :published, :image, :position
end
