# Write your code here.
require 'pry'

def dictionary
  replacement_words = {'hello' => 'hi', 'to' => '2', 'two' => '2', 'too' => '2', :'for' => '4', :'four' => '4', :'be' => 'b', :'you' => 'u', :'at' => '@', :'and' => '&'}
end
  
def word_substituter(tweet)
  # replaces long words with their expected short form
    tweet.split(" ").map do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
   puts word_substituter(tweet)
  end
end 


  