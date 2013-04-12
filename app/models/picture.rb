class Picture < ActiveRecord::Base
	
  attr_accessible :image

  belongs_to :imageable, :polymorphic => true

  has_attached_file :image,
  	:styles => { :medium => "300x300>", :thumb => "100x100>" },
  	:default_url => "/images/:style/missing.png",
  	:url => "/assets/photos/:id/:style/:basename.extension",
  	:path => ":rails_root/public/assets/photos/:id/:style/:basename.extension"
  
end
