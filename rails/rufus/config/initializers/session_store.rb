# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tokyo-app_session',
  :secret      => '45a0ded77247c96366b7d944e668f10b4c569a3fa729d2bee13cef5152bde2815e65ed82bc0d9afdf18cda7ebe0c48ab50f54e1d4651e5cc9535cacee6b8ddf9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
