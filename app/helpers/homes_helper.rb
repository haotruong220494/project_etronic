module HomesHelper
	def sale_off product
		if product.promotional_price.present?
			percent = (product.promotional_price.to_f / product.price.to_f ) * 100
			percent = (100 - percent).to_i
			"-#{percent}%"
		end
	end
end	