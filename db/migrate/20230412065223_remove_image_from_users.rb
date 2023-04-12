class RemoveImageFromUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :image, :user_image
  end
end
