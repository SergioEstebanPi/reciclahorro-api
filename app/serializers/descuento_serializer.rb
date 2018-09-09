class DescuentoSerializer < ActiveModel::Serializer
  attributes :id, :titulo, :descripcion, :porcentaje
  has_one :almacen
end
