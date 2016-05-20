if @book.nil?
  json.error "Not Found any Book"
else
  json.partial! 'book'
  json.extract! @book.category, :category_name
end