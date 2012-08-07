class Widget

  include DataMapper::Resource

  property :id, Serial

  property :name, String
  property :length, Integer
  property :description, Text
  property :occurred_at, String

  has n, :reviews
end
