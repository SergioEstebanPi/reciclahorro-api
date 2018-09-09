class SolicitudSerializer < ActiveModel::Serializer
  attributes :id, :titulo, :descripcion, :tipo, :direccion, :estado
  has_one :user
  has_one :oferta
end
