class Like < ApplicationRecord
    belongs_to :user
    belongs_to :bookshop
    belongs_to :comment, counter_cache: :likes_count
end
