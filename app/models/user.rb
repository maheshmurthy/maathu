class User < ActiveRecord::Base
  belongs_to :account
  acts_as_authentic
   def deliver_password_reset_instructions!
     reset_perishable_token!
     Notifier.deliver_password_reset_instructions(self)
   end

   def deliver_confirmation_email!
     reset_perishable_token!
     Notifier.deliver_confirmation_email(self)
   end
end
