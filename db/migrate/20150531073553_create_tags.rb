class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.text :tag
      t.integer :user_id
    end
  end
end
