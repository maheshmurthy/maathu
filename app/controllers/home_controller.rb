class HomeController < ApplicationController
  include TimeUtil

  skip_before_filter :require_user
  protect_from_forgery :only => [:create, :update, :destroy]
  def index
    day = today
    @specials = DailySpecial.find_all_by_day(day)
  end
end
