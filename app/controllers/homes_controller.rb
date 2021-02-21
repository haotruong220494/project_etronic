class HomesController < ClientController
  def index
  	@collections_main = Collection.location("main")
  end
end
