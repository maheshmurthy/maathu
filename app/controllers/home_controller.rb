class HomeController < ApplicationController
  include TimeUtil
  include SpecialsUtil

  skip_before_filter :require_user
  protect_from_forgery :only => [:create, :update, :destroy]
  def index
    day = today
    @specials = getSpecialsOfDay(day)
  end
end
