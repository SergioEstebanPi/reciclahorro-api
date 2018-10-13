# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
1.upto(10) do |x|
    User.create(
            {
                name: "Usuario#{x}",
                email: "usuario#{x}@correo.com",
                password: "123456",
                rol: 1,
                documento: "1234",
                foto: "img/#{x}.jpg",
                direccion: "cll 123 cra 123",
                fecha_nacimiento: "01/01/1990"
            }
    )
end

1.upto(10) do |x|
    Almacen.create(
            {
                user_id: "#{x}",
                nombre: "Almacen#{x}",
                imagen: "img/#{x}.jpg",
                nit: "#{x}",
                tipo: 1,
                direccion: "cll 123 cra 123",
            }
    )
end

1.upto(10) do |x|
    Descuento.create(
            {
                titulo: "Descuento#{x}",
                descripcion: "Descripcion del Descuento#{x}",
                porcentaje: "#{x}",
                almacen_id: "#{x}"
            }
    )
end

1.upto(10) do |x|
    Producto.create(
            {
                nombre: "Producto#{x}",
                descripcion: "descripcion del Producto#{x}",
                imagen: "img/#{x}.jpg"
            }
    )
end

1.upto(10) do |x|
    Residuo.create(
            {
                nombre: "Residuo#{x}",
                descripcion: "descripcion del Residuo#{x}",
                imagen: "img/#{x}.jpg",
                tratamiento: "tratamiento del Residuo#{x}"
            }
    )
end

1.upto(10) do |x|
    Oferta.create(
        {
            almacen_id: "#{x}",
            descuento_id: "#{x}",
            residuo_id: "#{x}",
            producto_id: "#{x}",
            titulo: "Oferta#{x}",
            descripcion: "descripcion del Oferta#{x}",
            imagen: "img/103375_91919_1.jpg",
            fecha_inicio: "01/01/1990",
            fecha_fin: nil,
            estado: 1
        }
    )
end

11.upto(20) do |x|
    Oferta.create(
        {
            almacen_id: "#{x}",
            descuento_id: "#{x}",
            residuo_id: "#{x}",
            producto_id: "#{x}",
            titulo: "Oferta#{x}",
            descripcion: "descripcion del Oferta#{x}",
            imagen: "img/vb3_montaje-productos-pepsico2e33c3aeef576d378be6ff5000e253d8.jpg",
            fecha_inicio: "01/01/1990",
            fecha_fin: nil,
            estado: 1
        }
    )
end

1.upto(10) do |x|
    Solicitud.create(
        {
            user_id: "#{x}",
            oferta_id: "#{x}",
            titulo: "Solicitud#{x}",
            descripcion: "descripcion del Solicitud#{x}",
            tipo: 1,
            direccion: "cll 123 cra 123",
            estado: 1
        }
    )
end

1.upto(10) do |x|
    Entrega.create(
        {
            vecino_id: "#{x}",
            recolector_id: "#{x}",
            solicitud_id: "#{x}",
            oferta_id: "#{x}",
            peso: "#{x}",
            estadoresiduo: 1
        }
    )
end

1.upto(10) do |x|
    Beneficio.create(
        {
            user_id: "#{x}",
            entrega_id: "#{x}",
            estado: 1,
            codigobarras: "000000000000000000000000000"
        }
    )
end