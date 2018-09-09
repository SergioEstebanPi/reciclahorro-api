class BeneficioSerializer < ActiveModel::Serializer
  attributes :id, :estado, :codigobarras
  has_one :user
  has_one :entrega
end
