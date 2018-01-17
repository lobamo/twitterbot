require 'twitter'

client = Twitter::REST::Client.new do |config|
	config.consumer_key = ''
	config.consumer_secret = ''
	config.access_token  = ''
	config.access_token_secret = ''
end
#envoie un tweet
client.update('bonjour monde!');
#stream tout les tweet avec coffe et tea dedans
topics = ['coffee', 'tea']
client.filter(track: topics.join(",")) do |object|
	puts object.text if object.is_a?(Twitter::tweet)
end

#tweet a chaque journaliste entré dans l'array
contact = ['@jcunniet', "#@PaulLampon", "@Aziliz31"]
contact.each do |pseudo|
	client.update('Bonjour #{pseudo}, on te contact suite a notre formation thehackingproject')
end
