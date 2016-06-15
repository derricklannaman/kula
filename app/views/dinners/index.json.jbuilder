json.array!(@dinners) do |dinner|
  json.extract! dinner, :id
  json.url dinner_url(dinner, format: :json)
end
