class Product < ActiveRecord::Base

  has_attached_file :photo, :styles => { :medium => "400x400>", :thumb => "150x150>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end