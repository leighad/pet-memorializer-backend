class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :kind
      t.string :gender
      t.string :age
      t.string :born
      t.string :passed
      t.string :bio
      t.string :quote
      t.string :image

      t.timestamps
    end
  end
end
