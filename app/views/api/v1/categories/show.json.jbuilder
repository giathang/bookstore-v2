if @category.nil?
  json.error "Not found any Category"
else
  json.extract! @category, :id, :category_name
end