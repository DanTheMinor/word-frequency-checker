class String #This method will take a word (self) and a sentence (check)
  # and it will return the frequency of the word in that sentence.
  define_method(:wordfreq) do |check|
    freq = 0 #variable for holding the frequency of the word, which is eventually returned
    sent_words = check.split(" ") #splits the sentence that is being checked into an array of words
    sent_words.each do |word| #loops through every word of the sentence
        if word.==self
          freq += 1 #adds 1 to the counter every time a word in the sentence is the same as the matching word
        end
    end
    freq
  end
end
