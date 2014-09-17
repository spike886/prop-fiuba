class CreateCharacteristicsService
  def call
    Characteristic.create name: "A estrenar", characteristic_type: "Boolean"
    Characteristic.create name: "Balcón", characteristic_type: "Boolean"
    Characteristic.create name: "Comedor", characteristic_type: "Boolean"
    Characteristic.create name: "Dormitorio en suite", characteristic_type: "Boolean"
    Characteristic.create name: "Baulera", characteristic_type: "Boolean"
    Characteristic.create name: "Comedor diario", characteristic_type: "Boolean"
    Characteristic.create name: "Escritorio", characteristic_type: "Boolean"
    Characteristic.create name: "Cocina", characteristic_type: "Boolean"
    Characteristic.create name: "Dependencia servicio", characteristic_type: "Boolean"
    Characteristic.create name: "Hall", characteristic_type: "Boolean"
    Characteristic.create name: "Jardin", characteristic_type: "Boolean"
    Characteristic.create name: "Lavadero", characteristic_type: "Boolean"
    Characteristic.create name: "Living", characteristic_type: "Boolean"
    Characteristic.create name: "Living Comedor", characteristic_type: "Boolean"
    Characteristic.create name: "Patio", characteristic_type: "Boolean"
    Characteristic.create name: "Terraza", characteristic_type: "Boolean"
    Characteristic.create name: "Servicios", characteristic_type: "Boolean"
    Characteristic.create name: "Agua Corriente", characteristic_type: "Boolean"
    Characteristic.create name: "Desagüe cloacal", characteristic_type: "Boolean"
    Characteristic.create name: "Video cable", characteristic_type: "Boolean"
    Characteristic.create name: "Gas Natural", characteristic_type: "Boolean"
    Characteristic.create name: "Internet", characteristic_type: "Boolean"
    Characteristic.create name: "Pavimento", characteristic_type: "Boolean"

    Characteristic.create name: "Superficie total(m2)", characteristic_type: "Integer"
    Characteristic.create name: "Superficie Cubierta (m2)", characteristic_type: "Integer"
    Characteristic.create name: "Cantidad de hambientes", characteristic_type: "Integer"
    Characteristic.create name: "Expensas aproximadas", characteristic_type: "Integer"
    Characteristic.create name: "Antiguedad", characteristic_type: "Integer"
    Characteristic.create name: "Baños", characteristic_type: "Integer"

    Characteristic.create name: "Calle", characteristic_type: "String"
    Characteristic.create name: "Altura", characteristic_type: "String"
    Characteristic.create name: "Barrio", characteristic_type: "String"
  end
end
