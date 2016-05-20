if @book.nil?
  json.error "Not Found any Book"
else
  json.success "Update Success"
  json.partial! 'book'
end