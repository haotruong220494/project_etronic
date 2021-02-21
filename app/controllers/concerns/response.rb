module Response
	def response_id param_id
		param_id.split('-').last.delete("^0-9").to_i
	end
end