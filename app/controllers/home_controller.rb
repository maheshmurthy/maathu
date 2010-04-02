class HomeController < ApplicationController
  include TimeUtil
  skip_before_filter :require_user
  protect_from_forgery :only => [:create, :update, :destroy]
  def index
    # TODO Remove distinct for real site
    @specials = Special.all(:select => "DISTINCT #{today}").map(&today.intern)
  end
end
