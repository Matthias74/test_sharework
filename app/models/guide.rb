class Guide < ApplicationRecord
  has_many :texts
  validates :title, uniqueness: true, presence: true
end
