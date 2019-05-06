class Like < ApplicationRecord
    belongs_to :user
    belongs_to :bookshop, counter_cache: :likes_count
end
