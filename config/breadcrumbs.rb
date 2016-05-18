crumb :root do
  link "Home", root_path
end
crumb :category do |category|
  link "Category / #{category.category_name}", category
  parent :root
end
crumb :book do |book|
  link "Category / #{book.category.category_name} / #{book.title}", book
  parent :root
end

crumb :no_category_book do |book|
  link "#{book.title}", book
  parent :root
end