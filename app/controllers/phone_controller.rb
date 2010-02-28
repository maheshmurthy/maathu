class PhoneController < ApplicationController
  protect_from_forgery :only => [:create, :update, :destroy]
  def index
    respond_to do |format|
      format.xml { }
    end
  end
end
