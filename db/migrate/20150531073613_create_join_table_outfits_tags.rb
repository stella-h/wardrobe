class CreateJoinTableOutfitsTags < ActiveRecord::Migration
  def change
    create_table :outfits_tags, :id => false do |t| 
    t.integer :outfit_id
    t.integer :tag_id
    end
  end
end
