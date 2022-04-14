class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :sent_requests, class_name: "FollowRequest", foreign_key: "sender_id", dependent: :destroy
  has_many :received_requests, class_name: "FollowRequest", foreign_key: "recipient_id", dependent: :destroy
  has_many :inbound_likes, through: :photos, source: :likes
  has_many :outbound_likes, class_name: "Like", foreign_key: "fan_id", dependent: :destroy
  has_many :photos, foreign_key: "owner_id"
  has_many :comments, foreign_key: "author_id"
end
