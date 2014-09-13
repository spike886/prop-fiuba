class CreatePublicationTypesService
  def call
    PublicationType.create name: "Gratis", publication_days: 30, images_count: 3, videos_count: 0, cost: 0, priority_on_search: false, highlight: false
    PublicationType.create name: "Básica", publication_days: 90, images_count: 6, videos_count: 1, cost: 50, priority_on_search: true, highlight: false
    PublicationType.create name: "Premiun", publication_days: 365, images_count: 12, videos_count: 3, cost: 99, priority_on_search: true, highlight: true
  end
end
