class Like < ApplicationRecord
  belongs_to :fan, class_name: "User", counter_cache: true
  belongs_to :photo
  has_one :poster, through: :photo, source: :owner
end
