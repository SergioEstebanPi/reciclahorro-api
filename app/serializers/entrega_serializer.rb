class EntregaSerializer < ActiveModel::Serializer
  attributes :id, :peso, :estadoresiduo
  has_one :user
  has_one :solicitud
  has_one :user
  has_one :oferta
end
