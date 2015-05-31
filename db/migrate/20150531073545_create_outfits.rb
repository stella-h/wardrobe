class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.string :title
      t.text :description
      t.text :image
      t.integer :user_id
    end
  end
end
