# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |x|
    User.create(
            {
                name: "Usuario#{x}",
                email: "usuario#{x}@correo.com",
                password: "123456",
                rol: 1,
                documento: "1234",
                direccion: "cll 123 cra 123",
                fecha_nacimiento: "01/01/1990"
            }
    )
end