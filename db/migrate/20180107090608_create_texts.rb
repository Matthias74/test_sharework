class CreateTexts < ActiveRecord::Migration[5.1]
  def change
    create_table :texts do |t|
      t.string :title
      t.text :paragraph
      t.references :guide, foreign_key: true

      t.timestamps
    end
  end
end
