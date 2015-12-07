json.array!(@tours) do |tour|
  json.extract! tour, :id, :title, :teaser, :description, :url
  json.url tour_url(tour, format: :json)
end
