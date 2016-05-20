json.array!(@categories) do |category|
  json.extract! category, :id, :category_name
end