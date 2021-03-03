module ProductsHelper
  def product_with_collection obj
    obj.collection.products.limit(8).select { |product| product.id != obj.id }
  end
end
