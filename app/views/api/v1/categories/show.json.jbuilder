if @category.nil?
  json.error "Not found any Category"
else
  json.extract! @category, :id, :category_name
  json.books @category.books do |book|
    json.extract! book, :id, :isbn, :des
  end
end