class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.references :tag
      t.references :post

      t.timestamps
    end
    add_index :taggings, :tag_id
    add_index :taggings, :post_id
  end


  #def change
    #create_table :tags do |t|
     # t.string :name
     # t.timestamps
    #end
 
    #create_table :posts do |t|
     # t.string :url
     # t.timestamps
    #end
 
    #create_table :taggings do |t|
     # t.belongs_to :tag
     # t.belongs_to :post
     # t.timestamps
   # end
 # end

end
