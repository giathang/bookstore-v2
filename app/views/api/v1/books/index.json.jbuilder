json.books @books do |book|
	json.extract! book, :id, :title, :isbn, :des
	json.comments book.comments do |comment|
		json.extract! comment, :id, :commenter, :body
	end
end