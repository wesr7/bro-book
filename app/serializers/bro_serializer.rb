class BroSerializer < ActiveModel::Serializer
  attributes :id, :name, :college, :gym, :sport, :team
  has_many :hobbies
end
