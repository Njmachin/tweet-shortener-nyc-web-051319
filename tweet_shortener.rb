# Write your code here.

def dictionary
  shorter = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(words)
  words.split(" ").map do |word|
    if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.map do |tweet|
    puts word_substituter(tweet)
  end
end
  
def selective_tweet_shortener(tweet_x)
  if tweet_x.chars.length > 140
    word_substituter(tweet_x)
  else
    tweet_x
  end
end

def shortened_tweet_truncator(tweet_x)
  short_tweet = word_substituter(tweet_x)
  if short_tweet.chars.length > 140
    short_tweet.chars[0...137].push("...").join("")
  else
    short_tweet
  end
end

    
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  