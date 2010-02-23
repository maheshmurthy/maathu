class Special < ActiveRecord::Base
  validates_uniqueness_of :keyword
  validates_presence_of :keyword

  MAX_CHARS = 140
  DAYS = ['sunday', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday']
  validates_length_of :sunday, :maximum => 140
  validates_length_of :monday, :maximum => 140
  validates_length_of :tuesday, :maximum => 140
  validates_length_of :wednesday, :maximum => 140
  validates_length_of :thursday, :maximum => 140
  validates_length_of :friday, :maximum => 140
  validates_length_of :saturday, :maximum => 140
end
