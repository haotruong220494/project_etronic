module HomesHelper
	def sale_off product
		if product.promotional_price.present?
			percent = (product.promotional_price.to_f / product.price.to_f ) * 100
			percent = (100 - percent).to_i
			"-#{percent}%"
		end
	end

  def inventory product
    product.quantity - product.quantity_sold
  end

  def percent_product_sold product
    percent_product_sold = (product.quantity_sold.to_f / product.quantity.to_f) * 100
    percent_product_sold.to_i
  end
end
