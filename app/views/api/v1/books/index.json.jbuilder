json.books @books do |book|
	json.extract! book, :id, :title, :isbn, :des
	json.comments book.comments do |comment|
		json.extract! comment, :id, :commenter, :body
	end
	json.authors book.authors do |author|
		json.extract author, :id, :name
	end
end