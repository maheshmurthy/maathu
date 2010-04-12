class Bar < ActiveRecord::Base
  has_one :special
  belongs_to :user
end
