class Post < ApplicationRecord
    belongs_to :user
    has_many :likes
    has_many :post_categories
    has_many :categories, through: :post_categories
    validates :user_id, presence: true
end
