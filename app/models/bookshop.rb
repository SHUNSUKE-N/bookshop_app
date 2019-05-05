class Bookshop < ApplicationRecord
    mount_uploader :image_data, PictureUploader

    has_many :comments, dependent: :destroy
    has_many :users, through: :comments
    has_many :likes, dependent: :destroy
    has_many :like_users, through: :likes, source: :user

    validates :name, presence: true, length: {maximum: 50}
    validates :phone, presence: true, uniqueness: true
    validates :address, presence: true, length: {maximum: 100}
    validates :area, presence: true, length: {maximum: 20}
    validates :station, presence: true, length: {maximum: 20}

    scope :like_num, -> {order(likes_count: :desc)}

    # アップロードされた画像のサイズを最大5MBにバリデーションする
    def picture_size
        if picture.size > 5.megabytes
          errors.add(:picture, "should be less than 5MB")
        end
    end    

    def like?(user)
      like_users.include?(user)
    end

end
