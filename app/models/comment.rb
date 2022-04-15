class Comment < ApplicationRecord
  validates :author_id, presence: true
  validates :photo_id, presence: true

  belongs_to :photo
  belongs_to :author, class_name: "User", counter_cache: true
  has_one :owner, through: :photo
end
