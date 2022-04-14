class Comment < ApplicationRecord
  belongs_to :photo
  belongs_to :author, class_name: "User", counter_cache: true
  has_one :owner, through: :photo
end
