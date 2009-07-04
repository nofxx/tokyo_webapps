# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_play_session',
  :secret      => 'f1e1b0b7c89e5349546e4b942bd8456adb867e186f99d671e0285d0df6a6d059a91b85555cb2af2413e890b834c8645604ec03e521134cea72227a6e0ab7dfad'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
