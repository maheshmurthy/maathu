class HomeController < ApplicationController
  skip_before_filter :require_user
  protect_from_forgery :only => [:create, :update, :destroy]
  def index
    unless current_user
      return
    end
    @specials = Special.find_all_by_userid(current_user.id)
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @specials }
    end

  end
end
