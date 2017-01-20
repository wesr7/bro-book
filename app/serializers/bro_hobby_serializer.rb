class BroHobbySerializer < ActiveModel::Serializer
  attributes :id
  has_one :bro
  has_one :hobby
end
