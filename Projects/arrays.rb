fruits = ['apples', 'oranges', 'bananas']
people = ["Mattan", "Chris", "Lee"]
things = ["dogs", 55, true, people]

numbers = (1..10).to_a # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts "These are the things: #{things}"
puts "This is thing #1: #{things[0]}" # Don't forget to start at 0
puts "This is the last thing: #{things[-1]}"

# Adding something to an array
things << "One more thing..." 
puts "This is things now: #{things}"

# Turning a sentence into an array of words
sentence = "Ain’t nobody got time for that"
words = sentence.split
shuffled_words = words.shuffle

puts "The words are: #{words}"
puts "The shuffled words are: #{shuffled_words}"