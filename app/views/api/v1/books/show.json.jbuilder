if @book.nil?
	json.error("not found any book")
else
	json.book do
		json.extract! @book, :id, :title,:isbn, :des
		json.comments @book.comments do |comment|
			json.extract! comment, :id, :commenter, :body
		end
		json.authors @book.authors do |author|
			json.extract author, :id, :name
		end
		json.extract! @book.category, :id, :category_name
	end
end