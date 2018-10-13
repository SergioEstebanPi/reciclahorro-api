class ProductoSerializer < ActiveModel::Serializer
  attributes :id, :nombre, :descripcion, :imagen
end
