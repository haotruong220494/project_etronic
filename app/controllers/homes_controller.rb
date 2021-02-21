class HomesController < ClientController
  def index
  	@collections_main = Collection.location("main")
  	@blog = Article.all
  end
end
