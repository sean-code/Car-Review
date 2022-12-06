class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :username, :rating, :comment, :car_id
  has_many :cars
end
