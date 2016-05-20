json.array!(@books) do |book|
  json.extract! book, :id, :title, :isbn, :des, :category_id
end