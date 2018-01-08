class Document < ApplicationRecord
  belongs_to :guide
  validates :title, presence: true
  validates :description, presence: true
  validates :file, presence: true
  mount_uploader :file, FileUploader
  default_scope { order("position ASC") }
end
