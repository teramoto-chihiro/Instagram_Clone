class CreatePicture < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :image
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end