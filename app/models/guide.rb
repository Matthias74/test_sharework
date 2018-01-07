class Guide < ApplicationRecord
  validates :title, uniqueness: true, presence: true
end
