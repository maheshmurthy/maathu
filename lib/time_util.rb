module TimeUtil
  def today
    Date::DAYNAMES[DateTime.now.strftime("%w").to_i].downcase
  end
end
