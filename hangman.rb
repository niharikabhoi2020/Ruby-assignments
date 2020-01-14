possible_words = ["sagar","niharika","tejas","akansha","deepali","mayur","latikesj","abhishek","anurag","shubham"]

word  = possible_words.sample
word_length = word.length

hash  = Hash.new{|h,k| h[k] = [] }
selected_word = word.split('')

selected_word.each_with_index { |value,index| [hash[value].push(index)]  }

hash_size = hash.size
display=Array.new

for i in 0...word_length
  display.push("_")
end

puts "Guess the word"
p display

attempts  = 5
correct_letter  = hash_size
puts "You have #{attempts} attempts"
 
while correct_letter>0  

  if attempts>0
    flag = false
    puts "Enter an alphabet"
    alphabet = gets.chomp

    hash.each do |key, value|
      if key==alphabet
        flag  =  true
        position = value
        position.each { |x| display[x]= alphabet}
        p display
        correct_letter -=  1
      end
    end

    if correct_letter==0
      puts "You won"
      p display
    end

    if flag == false
      attempts -= 1
      if attempts == 0
        puts "You Lost"
        print "Word was "
        p  selected_word
        correct_letter = 0
      else
        puts "You have #{attempts} attempts"
      end
    end

  end

end

