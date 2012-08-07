class Widget < ActiveRecord::Base
  has_many :reviews
  attr_accessible :description, :length, :name, :occurred_at
end
