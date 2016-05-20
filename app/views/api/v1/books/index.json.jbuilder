json.books @books do |book|
  json.extract! book, :id, :title, :isbn, :des
  json.extract! book.category, :category_name
end