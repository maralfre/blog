class Article < ApplicationRecord
    has_one_attached :photo
    has_many :comments, dependent: :destroy
    validates :title, presence: true,
    length: { minimum: 5 }
    before_save :mayuscula

    def mayuscula
      self.title = self.title.capitalize
    end
end
