json.extract! @category, :id, :category_name
json.books @books do |book|
  json.extract! book, :id, :des, :isbn
end
