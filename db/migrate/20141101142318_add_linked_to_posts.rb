class AddLinkedToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :linked, :boolean
  end
end
