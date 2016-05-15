json.authors @authors do |author|
	json.extract! author, :id, :name
	json.books author.books do |book|
		json.extract! book, :id, :title
	end
end