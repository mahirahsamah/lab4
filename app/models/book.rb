class Book < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: false
    validates :price, presence: false
    validates :publish_date, presence: false
end
