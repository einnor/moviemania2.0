#Omniauth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do

	provider :facebook, FACEBOOK_ID, FACEBOOK_SECRET
	provider :twitter, TWITTER_KEY, TWITTER_SECRET
	#provider :google_oauth2, GOOGLE_KEY, GOOGLE_SECRET

end
