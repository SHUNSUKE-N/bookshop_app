class Bookshop < ApplicationRecord
    validates :name, presence: true, length: {maximum: 50}
    validates :phone, presence: true, uniqueness: true
    validates :address, presence: true, length: {maximum: 100}
    validates :area, presence: true, length: {maximum: 20}
    validates :station, presence: true, length: {maximum: 20}
end
