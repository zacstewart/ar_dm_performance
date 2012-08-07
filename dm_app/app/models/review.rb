class Review

  include DataMapper::Resource

  property :id, Serial

  property :comment, Text
  property :rating, Integer

  belongs_to :widget
end
