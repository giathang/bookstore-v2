if @book.nil?
  json.error "Not Found any Book"
else
  json.success "DeLete Success"
  json.partial! 'book'
end
