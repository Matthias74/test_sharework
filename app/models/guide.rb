class Guide < ApplicationRecord
  has_many :texts
  has_many :documents
  validates :title, uniqueness: true, presence: true
end
