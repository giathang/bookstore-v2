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