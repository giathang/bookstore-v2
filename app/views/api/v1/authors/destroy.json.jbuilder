if @author.nil?
	json.error "Not found any book"
else
	json.success "Delete Success"
end