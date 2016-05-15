json.authors @authors do |author|
	json.extract! author, :id, :name
end