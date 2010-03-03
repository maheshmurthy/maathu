class SmsController < ApplicationController
  protect_from_forgery :only => [:create, :update, :destroy]
  def index
    from = params[:From]
    message = params[:Body]
    today = Date::DAYNAMES[DateTime.now.day].downcase

    day_special = Special.find_by_keyword(message)
    unless day_special
      return
    end

    @special = day_special.send(today)
    unless @special
      return
    end

    respond_to do |format|
      format.xml { }
    end
  end
end
