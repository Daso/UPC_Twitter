class Tweet < ActiveRecord::Base

def index
	Twitter.configure do |config|
	config.consumer_key = 'bsAYkC2uMftQXaLFfEcsQ'
	config.consumer_secret = 'WowdQHoKeuJzUZfwae723HmcPfMfcZebr8fxWhDA'
	config.consumer_token = '54448492-A1Sz35hjIwH7dHnYgCWnTHBiwMyddC6vzMH3kBOxA'
	config.consumer_token_secret = 'pPgtPm8P3le5umJlLhjJQTq6UnLtYHbB2ZlkKO3HizQ'
	end
end
	def message
		return "sin user" if self.user.blank?
		Twitter.user_timeline(self.user).first.text
	end

end
