if @author.nil?
	json.error "Not found any author"
else
	json.author do
		json.extract! @author, :id, :name
	end
end