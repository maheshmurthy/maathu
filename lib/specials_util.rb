module SpecialsUtil
  def getSpecialsOfDay(day)
    Special.all(:select => "specials.id, #{day} as day_special, bar_id, name", :joins => :bar, :conditions => "#{day} not like ''")
  end
end
