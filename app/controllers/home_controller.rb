class HomeController < ApplicationController
  before_filter :authenticate_user!

  # GET /items
  # GET /items.json
  def index
logger.error current_user.id
    #@items = Item.where(:user_id => current_user.id)
    @items = Item.find_all_by_user_id(current_user.id)
    #@items = Item.all
logger.error @items[1].categories[0].name.inspect
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @items }
    end
  end

end
