json.partial! 'category'
json.books @books do |book|
  json.extract! book, :id, :des, :isbn
end
