class Bookshop < ApplicationRecord
    mount_uploader :image_data, PictureUploader

    has_many :comments, dependent: :destroy
    has_many :users, through: :comments


    validates :name, presence: true, length: {maximum: 50}
    validates :phone, presence: true, uniqueness: true
    validates :address, presence: true, length: {maximum: 100}
    validates :area, presence: true, length: {maximum: 20}
    validates :station, presence: true, length: {maximum: 20}

    # アップロードされた画像のサイズをバリデーションする
    def picture_size
        if picture.size > 5.megabytes
          errors.add(:picture, "should be less than 5MB")
        end
      end    

end
