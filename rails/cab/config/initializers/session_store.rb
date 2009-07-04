# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_hdb_session',
  :secret      => '1ac60c58600f94e2aed9389de7117e547e27863d23eeb9e2f5910351abea1eaaa81e97440d58d16c71e43faa165557ae3d6426ae7a87efcd16a809244813696d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
