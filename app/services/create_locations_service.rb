class CreateLocationsService
  def call
    Location.create name: "Balbanera"
    Location.create name: "Belgrano"
    Location.create name: "Recoleta"
    Location.create name: "Puerto madero"
    Location.create name: "Congreso"
    Location.create name: "Colegiales"
    Location.create name: "Nuñez"
  end
end
