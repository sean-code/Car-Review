class ReviewSerializer < ActiveModel::Serializer
  attributes :username, :rating, :comment, :car_id
end
