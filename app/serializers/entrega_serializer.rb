class EntregaSerializer < ActiveModel::Serializer
  attributes :id, :peso, :estadoresiduo
  #has_one :user
  has_one :vecino
  has_one :solicitud
  #has_one :user
  has_one :recolector
  has_one :oferta
end
