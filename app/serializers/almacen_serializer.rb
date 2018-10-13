class AlmacenSerializer < ActiveModel::Serializer
  attributes :id, :nombre, :nit, :imagen, :tipo, :direccion
  has_one :user
end
