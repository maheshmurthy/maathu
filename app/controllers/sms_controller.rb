class SmsController < ApplicationController
  protect_from_forgery :only => [:create, :update, :destroy]
  def index
    from = params[:From]
    message = params[:Body]
    @special = Special.find_by_keyword(message)
    unless @special
      return
    end
    respond_to do |format|
      format.xml { }
    end
  end
end
