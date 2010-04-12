class SpecialsController < ApplicationController
  include SpecialsUtil

  def day
    @specials = getSpecialsOfDay(params[:id])
  end

  def upvote
    @special = Special.find(params[:id])
    @special.upvote += 1
    @special.save
  end
end
