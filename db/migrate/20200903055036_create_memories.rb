class CreateMemories < ActiveRecord::Migration[6.0]
  def change
    create_table :memories do |t|
      t.string :title
      t.datetime :date
      t.string :description
      t.string :image
      t.boolean :favorite
      t.belongs_to :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
