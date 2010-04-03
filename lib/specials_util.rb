module SpecialsUtil
  def getSpecialsOfDay(day)
    Special.all(:select => "#{day} as day_special, bar_id, name", :joins => :bar)
  end
end
