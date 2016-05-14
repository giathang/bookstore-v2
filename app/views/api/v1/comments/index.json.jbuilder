if @book.nil?
	json.error "Not found any Book"
else
	json.comments @comments do |comment|
		json.extract! comment, :id, :commenter, :body
	end
end