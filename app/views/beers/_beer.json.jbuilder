json.extract! beer, :id, :release, :price, :description, :img_url, :created_at, :updated_at
json.url beer_url(beer, format: :json)
