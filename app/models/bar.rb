class Bar < ActiveRecord::Base
  belongs_to :user
  has_many :daily_specials
  accepts_nested_attributes_for :daily_specials
end
