class Post < ApplicationRecord
  has_many :comments, :dependent => :destroy
  has_many :votes, :dependent => :destroy
  has_attached_file :image, {}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
