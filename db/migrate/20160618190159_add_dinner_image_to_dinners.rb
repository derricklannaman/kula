class AddDinnerImageToDinners < ActiveRecord::Migration
  def change
    add_column :dinners, :dinner_image_id, :string
  end
end
