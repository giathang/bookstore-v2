if @book.nil?
	json.error "Not found any Book"
else
	json.extract! @comment, :id, :commenter, :body
end