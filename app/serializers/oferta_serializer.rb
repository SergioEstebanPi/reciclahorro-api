class OfertaSerializer < ActiveModel::Serializer
  attributes :id, :fecha_inicio, :fecha_fin, :estado
  has_one :almacen
  has_one :descuento
  has_one :residuo
  has_one :producto
end
