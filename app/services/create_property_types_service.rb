class CreatePropertyTypesService
  def call
    PropertyType.create name: "Casa"
    PropertyType.create name: "PH"
    PropertyType.create name: "Barrio Cerrado"
    PropertyType.create name: "Departament"
    PropertyType.create name: "Departamento Compartido"
    PropertyType.create name: "Oficina"
    PropertyType.create name: "Quinta"
    PropertyType.create name: "Terreno"
    PropertyType.create name: "Campo"
    PropertyType.create name: "Galpón"
    PropertyType.create name: "Local"
    PropertyType.create name: "Hotel"
    PropertyType.create name: "Edificio"
    PropertyType.create name: "Cochera"
    PropertyType.create name: "Tiempo Compartido"
  end
end
