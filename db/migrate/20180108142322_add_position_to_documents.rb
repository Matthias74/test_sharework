class AddPositionToDocuments < ActiveRecord::Migration[5.1]
  def change
    add_column :documents, :position, :integer
  end
end
