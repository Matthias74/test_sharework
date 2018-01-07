class Text < ApplicationRecord
  belongs_to :guide
  validates :title, presence: true
  validates :paragraph, presence: true
end
