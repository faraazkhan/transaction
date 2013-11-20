# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Transaction::Application.config.secret_key_base = 'ef1e0547ba07b5be80630859b0f74ebcbde779c08842d67a94d1ed1d9ec8a65a1d6ac943d2b850e0a796ba378c6aa0c583bbfdc2fa6f5cd053baa4c7d818fdb1'
