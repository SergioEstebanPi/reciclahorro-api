class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :documento, :foto, :rol, :direccion, :fecha_nacimiento#, :password_digest
end
