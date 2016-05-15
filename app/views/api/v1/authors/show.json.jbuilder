if @author.nil?
	json.error "Not found any author"
else
	json.author do
		json.extract! @author, :id, :name
		json.books @author.books do |book|
			json.extract! book, :id, :title
		end
	end
end