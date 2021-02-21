class ArticlesController < ClientController
	include Response

	def show
		@collections_main = Collection.location("main")
    @article = Article.find_by_id response_id(params[:slug])
  end
end
