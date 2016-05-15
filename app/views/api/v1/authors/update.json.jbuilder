if @author.nil?
	json.error "Not found any author"
else
	json.extract! @author, :id, :name
end