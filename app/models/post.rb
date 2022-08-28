class Post < ApplicationRecord
    belongs_to :user
    belongs_to :category
    validates :user_id, presence: true
end
