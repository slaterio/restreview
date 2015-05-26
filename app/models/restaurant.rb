class Restaurant < ActiveRecord::Base

	  searchkick

	  has_attached_file :image, :styles => { :medium => "500x>", :thumb => "100x100>" }, :default_url => "default.jpg"
  	  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  	  has_many :reviews

  	  validates :name, :address, :phone, :website, :image, presence: true
  	  validates :website, format: { with: /\Ahttps?:\/\/.*\z/, message: "must start with http:// or https://" }
end
