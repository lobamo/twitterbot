require 'twitter'

client = Twitter::REST::Client.new do |config|
	config.consumer_key = 's2AkXOH0CBYP2GVmNOek9eNmJ'
	config.consumer_secret = 'bkFcApogIcIqeLxJpwXIm8qqFEmRzLmqAxGu16Xp2hci4hCBcC'
	config.access_token  = '953649417390886913-z7kEHdcs37x1D5A50CTryFNIkdmI1dE'
	config.access_token_secret = 'daHKTuIDTU31FrRvPQsakzOkpamyumyQxRMxidq2HVGOP'
end

#client.update('bonjour monde!');
=begin
topics = ['coffee', 'tea']
client.filter(track: topics.join(",")) do |object|
	puts object.text if object.is_a?(Twitter::tweet)
end
=end
#tweet a chaque journaliste entré dans l'array
contact = ['@jcunniet', "#@PaulLampon", "@Aziliz31"]
contact.each do |pseudo|
	client.update('Bonjour #{pseudo}, on te contact suite a notre formation thehackingproject')
end