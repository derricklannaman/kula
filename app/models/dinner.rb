class Dinner < ActiveRecord::Base
  belongs_to :destination
  attachment :dinner_image
end
