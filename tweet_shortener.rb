# Write your code here.
require 'pry'

def dictionary
  replacement_words = {:'hello' => 'hi', :'to' => '2', :'two' => '2', :'too' => '2', :'for' => '4', :'four' => '4', :'be' => 'b', :'you' => 'u', :'at' => '@', :'and' => '&'}
end
  
def word_substituter(tweet)
  # replaces long words with their expected short form
    tweet.split(" ").map do |word| #creates the array of tweet words and iterates over each word
      if dictionary.keys.include?(word.downcase) #on the iteration, checks if dictionary includes tweet word  which is also downcased
        word = dictionary[word.downcase] #if the condition is met the tweet word local variable gets assigned to the dictionary key
      else
        word #if condition is not met return the word to the array
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
   puts word_substituter(tweet)
  end
end 


  