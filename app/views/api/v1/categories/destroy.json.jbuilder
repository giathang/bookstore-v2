if @category.nil?
  json.error "Not Found any Book"
else
  json.success "Delete Success"
  json.partial! 'category'
end