crumb :root do
  link "Home", root_path
end
crumb :category do |category|
  link "Category / #{category.category_name}", category
  parent :root
end
