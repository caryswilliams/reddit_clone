class Post < ApplicationRecord
  has_many :comments, :dependent => :destroy
  has_many :votes, :dependent => :destroy
  belongs_to :user
  has_attached_file :image, styles: { thumb: "100x100>", med: "200x200>", large: "400x400>"}, 
                    content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }, 
                    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
