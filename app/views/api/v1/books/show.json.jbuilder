if @book.nil?
	json.error("not found any book")
else
	json.book do
		json.extract! @book, :id, :title,:isbn, :des
		json.comments @book.comments do |comment|
			json.extract! comment, :id, :commenter, :body
		end
	end
end