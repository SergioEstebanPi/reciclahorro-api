class AlmacenSerializer < ActiveModel::Serializer
  attributes :id, :nombre, :nit, :tipo, :direccion
  has_one :user
end
