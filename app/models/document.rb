class Document < ApplicationRecord
  belongs_to :guide
  validates :title, presence: true
  validates :description, presence: true
end
