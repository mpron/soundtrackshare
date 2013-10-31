class AddUrlToTags < ActiveRecord::Migration
  def change
    add_column :tags, :url, :string
  end
end
