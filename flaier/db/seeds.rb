# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "WARNING! wiping all records!"
Situacion.destroy_all
Entidad.destroy_all

Entidad.create!(
    descripcion: "Relaciones de pareja"
).tap do |entidad|
    Situacion.create!(
        entidad: entidad,
        descripcion: "Antes de la relación"
    ).tap do |situacion|
        Estado.create!(
            situacion: situacion,
            descripcion: "Buena relación"
        )
    end
    Situacion.create!(
        entidad: entidad,
        descripcion: "Durante la relación"
    ).tap do |situacion|
        Estado.create!(
            situacion: situacion,
            descripcion: ""
        )
    end
    Situacion.create!(
        entidad: entidad,
        descripcion: "Después de la relación"
    ).tap do |situacion|

    end
end

Entidad.create!(
    descripcion: "Relaciones NO pareja"
)

Entidad.create!(
    descripcion: "Críticas"
)

Entidad.create!(
    descripcion: "Alabanza / Agradecimiento"
)

puts "done! DB seeded"