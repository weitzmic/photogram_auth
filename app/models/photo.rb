class Photo < ApplicationRecord

belongs_to :user
has_one :caption

has_many :fans, :through => :likes, :source => :user
has_many :comments
has_many :likes

validates :user_id, :presence => true

end
