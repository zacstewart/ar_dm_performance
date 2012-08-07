class Review < ActiveRecord::Base
  belongs_to :widget
  attr_accessible :comment, :rating
end
