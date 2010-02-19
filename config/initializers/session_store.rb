# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_maathu_session',
  :secret      => 'a99189b243b5e28c182fe9311f725233329e9ef15a48bfb805328eede7b57963582db53c77ef6c6c25214044fd29985e5f93d6a4688eb135f2afd76d91e75213'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
