class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  has_many :photos, :class_name => "Photo", :foreign_key => "user_id"
  has_many :liked_photos, :through => :likes, :source => :photo
  has_many :comments
  has_many :likes

  validates :name, :presence => true


end
