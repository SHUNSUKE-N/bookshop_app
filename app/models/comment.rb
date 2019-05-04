class Comment < ApplicationRecord

    belongs_to :user
    belongs_to :bookshop

    validates :body, presence: true, length: {maximum: 500}

end
