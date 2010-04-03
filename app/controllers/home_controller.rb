class HomeController < ApplicationController
  include TimeUtil
  skip_before_filter :require_user
  protect_from_forgery :only => [:create, :update, :destroy]
  def index
    @specials = Special.all(:select => "#{today}, bar_id, name", :joins => :bar)
  end
end
