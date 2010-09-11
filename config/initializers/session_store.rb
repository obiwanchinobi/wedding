# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_wedding_session',
  :secret      => 'f38b515dd5e8ab3ed175274a62d44a15b92dde7c7cc8ea4800732fe66c58f4fb2e0f21afbb38ad3d6edca13816941965fe3afff52f4853c6c4464804e69e3514'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
