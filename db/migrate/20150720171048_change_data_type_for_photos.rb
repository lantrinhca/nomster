class ChangeDataTypeForPhotos < ActiveRecord::Migration
  def change
    change_column :photos, :caption, :text
  end
end
