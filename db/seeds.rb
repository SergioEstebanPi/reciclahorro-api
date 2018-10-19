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
                foto: "default/avatar.png",
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
                imagen: "default/44_supermarket_cart_shopping_item_add_product-512.png",
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

Producto.create(
        {
            nombre: "Producto",
            descripcion: "descripcion del Producto"#,
            #imagen: "default/44_supermarket_cart_shopping_item_add_product-512.png"
        }
)

Producto.create(
        {
            nombre: "Productos de aso",
            descripcion: "descripcion del Producto"#,
            #imagen: "default/44_supermarket_cart_shopping_item_add_product-512.png"
        }
)


1.upto(10) do |x|
    Residuo.create(
            {
                nombre: "Residuo#{x}",
                descripcion: "descripcion del Residuo#{x}",
                imagen: "default/44_supermarket_cart_shopping_item_add_product-512.png",
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
            imagen: "default/44_supermarket_cart_shopping_item_add_product-512.png",
            fecha_inicio: "01/01/1990",
            fecha_fin: nil,
            estado: 1
        }
    )
end

Oferta.create(
        {
            almacen_id: "1",
            descuento_id: "1",
            residuo_id: "1",
            producto_id: "1",
            titulo: "Celular MOTOROLA Moto G5 DS Gris",
            descripcion: "Precio normal: $699.900 Ahora: $399.900",
            imagen: "default/44_supermarket_cart_shopping_item_add_product-512.png",
            fecha_inicio: "01/11/2018",
            fecha_fin: "01/11/2018",
            estado: 1
        }
    )

11.upto(20) do |x|
    Oferta.create(
        {
            almacen_id: "#{x}",
            descuento_id: "#{x}",
            residuo_id: "#{x}",
            producto_id: "#{x}",
            titulo: "Oferta#{x}",
            descripcion: "descripcion del Oferta#{x}",
            imagen: "default/44_supermarket_cart_shopping_item_add_product-512.png",
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


# OTROS

Producto.create(
            {
                nombre: "Lavadora Secadora Digital Carga frontal LG 23,5Kg TWWO20VVS2 GRIS",
                descripcion: "Ahorra Tiempo, Energia, Agua y espacio 
                Capacidad Total 23,5 Kgs 
                Limpieza Superior y Cuidado de las prendas con 6MotionDD™ 
                Durabilidad, Ahorro y confianza con Motor Inverter Direct Drive 
                Dos Lavadoras en un Solo Cuerpo LG 
                TWINWash"#,
                #imagen: "default/44_supermarket_cart_shopping_item_add_product-512.png"
            }
    )
    
Producto.create(
            {
                nombre: "Olla a presión Home Elements 4,2 lts HEOP42L",
                descripcion: "Incluye vaporera interna 
                Cuerpo de aluminio de gran durabilidad 
                Peso 1.6 kg 
                Dimensiones 33.5 x 25 x 20.5 cm"#,
                #imagen: "default/44_supermarket_cart_shopping_item_add_product-512.png"
            }
    )
    
Producto.create(
            {
                nombre: "Horno Microondas de 0,7pc General Electric JES70G",
                descripcion: "Capacidad (Pies): 0,7 
                Niveles de Cocción: 10 
                Número Programas: 6 
                Función de Inicio Rápido: Sí 
                Potencia de Cocción: 110V"#,
                #imagen: "default/44_supermarket_cart_shopping_item_add_product-512.png"
            }
    )
    
Producto.create(
            {
                nombre: "Plancha vapor y seco antiadherente Home Elements HEPL-268",
                descripcion: "Potencia: 1100 watts 
                Led indicador de temperatura S
                uela antiadherente con 56 salidas de vapor 
                Dimensiones 29.5 x 12.5 x 14 cm"#,
                #imagen: "default/44_supermarket_cart_shopping_item_add_product-512.png"
            }
    )
    
Producto.create(
            {
                nombre: "Grill asador panini Home Elements HE088",
                descripcion: "Potencia: 1000 watts 
                Peso 1.9 kg 
                Regulador de temperatura 
                Dimensiones 34 x 13.5 x 29 cm"#,
                #imagen: "default/44_supermarket_cart_shopping_item_add_product-512.png"
            }
    )
    
Producto.create(
            {
                nombre: "Olla arrocera Home Elements 1,0 lt HEPLRC5N",
                descripcion: "Potencia: 400 watts 
                Recipiente removible 
                Capacidad 1,0 Litros 
                Sensor de temperatura 
                Incluye taza medidora"#,
                #imagen: "default/44_supermarket_cart_shopping_item_add_product-512.png"
            }
    )
    
Producto.create(
            {
                nombre: "Exprimidor de jugo Home Elements HE8802N NEGRO",
                descripcion: "Potencia: 400 watts 
                Capacidad: 900 ml 
                Partes desmontables 
                Base antideslizante"#,
                #imagen: "default/44_supermarket_cart_shopping_item_add_product-512.png"
            }
    )
    
Producto.create(
            {
                nombre: "Cafetera eléctrica Home Elements 10 Tazas",
                descripcion: "Potencia:800 watts 
                Filtro removible 
                Capacidad 10 tasas 
                Sensor de temperatura 
                Incluye cuchara dosificadora"#,
                #imagen: "default/44_supermarket_cart_shopping_item_add_product-512.png"
            }
    )
    
Producto.create(
            {
                nombre: "Celular Galaxy S7 EDGE Samsung SM-G935FZDLCOO DORADO",
                descripcion: "Pantalla 5.5 pulgadas 
                Camara principal 12 MP 
                Camara frontal 5 MP 
                Procesador 2.3GHz, 1.6GHz 
                Memoria interna 32GB 
                RAM 4 GB 
                Bateria 3600 mAh"#,
                #imagen: "default/44_supermarket_cart_shopping_item_add_product-512.png"
            }
    )
    
Producto.create(
            {
                nombre: "Televisor 55UJ620T.AWC/UJ635 55 - Pulgadas Smart UHD 4K",
                descripcion: "55 pulgadas 
                3.840 x 2.155 
                UHD 4K 
                Smart TV 
                HDMI: 3 
                USB: 2 
                Sí TDT"#,
                #imagen: "default/44_supermarket_cart_shopping_item_add_product-512.png"
            }
    )
    
Almacen.create(
            {
                user_id: "1",
                nombre: "falabella",
                nit: "9000174478",
                tipo: 1,
                direccion: "Av. Boyacá #80 - 94"
            }
        )
Almacen.create(
            {
                user_id: "2",
                nombre: "Almacenes Exito S.A.",
                nit: "8909006089",
                tipo: 1,
                direccion: "Carrera 59a No. 79 - 30",
            }
        )
            
Almacen.create(
            {
                user_id: "3",
                nombre: "Supertiendas y droquerias Olimpica S.A.",
                nit: "8901074873",
                tipo: 1,
                direccion: "Cra 38 # 97 -76",
            }
        )
            
Almacen.create(
            {
                user_id: "4",
                nombre: "Alkosto S.A.",
                nit: "8909009431",
                tipo: 1,
                direccion: "AV. Carrera 68 N° 72 - 43",
            }
        )
            
Almacen.create(
            {
                user_id: "5",
                nombre: "Makro",
                nit: "9000592385",
                tipo: 1,
                direccion: "Calle 175 N° 22 – 13",
            }
        )
            
Almacen.create(
            {
                user_id: "6",
                nombre: "Almacenes Homecenter",
                nit: "8002421062",
                tipo: 1,
                direccion: "Ak 68 #80 - 77",
            }
        )
            
Almacen.create(
            {
                user_id: "7",
                nombre: "Colsubsidio",
                nit: "8600073361",
                tipo: 1,
                direccion: "Cl. 27 #26-42",
            }
        )
            
Descuento.create(
            {
                titulo: "Televisores y Audio LG",
                descripcion: "Televisor OLED LG 65 - UHD - 4K - Smart TV - OLED65W8PDA",
                porcentaje: "25%",
                almacen_id: "1"
            }
    )

Descuento.create(
            {
                titulo: "Portátil HP",
                descripcion: "Portátil HP Spectre 13 -8GB -Intel Core i7 -13-ae003la + Win pen",
                porcentaje: "35%",
                almacen_id: "2"
            }
    )
    
Descuento.create(
            {
                titulo: "Electrodomesticos ABBA",
                descripcion: "Estufa de piso Abba AB 505-6 inox master chef gp",
                porcentaje: "20%",
                almacen_id: "3"
            }
    )
    
Descuento.create(
            {
                titulo: "Electrodomesticos Samsung",
                descripcion: "Nevecón Samsung 582 lt RF265 Beaesg/Co Black Family Hub",
                porcentaje: "25%",
                almacen_id: "4"
            }
    )
    
Descuento.create(
            {
                titulo: "Sofas y salas",
                descripcion: "Sala en l royal - taupe - challenger",
                porcentaje: "30%",
                almacen_id: "5"
            }
    )
    
Descuento.create(
            {
                titulo: "Basecama doble colcho premiun",
                descripcion: "Colchón thomson 120 x 190 - simmons",
                porcentaje: "30%",
                almacen_id: "6"
            }
    )
    
Descuento.create(
            {
                titulo: "Vinos",
                descripcion: "Vino Carnmenere gran Reserva Autoritas x 750 Cc",
                porcentaje: "50%",
                almacen_id: "7"
            }
    )
    
Residuo.create(
            {
                nombre: "Metal",
                descripcion: "Varillas",
                tratamiento: "reducir"
            }
    )
    
Residuo.create(
            {
                nombre: "Vidrio",
                descripcion: "150 cm X 130 cm",
                tratamiento: "reutilizar"
            }
    )
    
Residuo.create(
            {
                nombre: "Papel",
                descripcion: "tamaño carta y oficio",
                tratamiento: "reciclar"
            }
    )
    
Residuo.create(
            {
                nombre: "Carton",
                descripcion: "cajas de carton",
                tratamiento: "reducir"
            }
    )
    
Residuo.create(
            {
                nombre: "Madera",
                descripcion: "tablas demolicion",
                tratamiento: "reutilizar"
            }
    )
    
Residuo.create(
            {
                nombre: "Plastico",
                descripcion: "bolsas",
                tratamiento: "reciclar"
            }
    )
    
Residuo.create(
            {
                nombre: "Textiles",
                descripcion: "cortinas",
                tratamiento: "reducir"
            }
    )
    