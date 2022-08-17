class Restaurant < ApplicationRecord
  # CATEGORY_LIST : [["chinese", "italian", "japanese", "french", "belgian"]]
  has_many :reviews, dependent: :destroy
  validates :name, presence: true, length: { minimum: 1 }
  validates :address, :category, presence: true
  validates :category, inclusion: ["chinese", "italian", "japanese", "french", "belgian"]

end
