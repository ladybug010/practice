
#fortune teller

line_width = 70
puts( 'You enter a store, it is dusty and old.'.center(line_width))
puts( 'The light is low, except for the glow of small, waxy candles in the next room.'.center(line_width))
puts( 'You walk forward.'.center(line_width))
puts( ' Pushing aside the thin, dark colored sheet, you peek into the next room'.center(line_width))
puts( 'A woman, wrapped in flowing garmets looks up, slowly'.center(line_width))
puts( ' She is not startled to see you.'.center(line_width)) 
puts( 'In her hands is a deck of thick, worn cards.'.center(line_width))
puts( 'She nods to you and motions to the seat beside her on a thread-bare pillow.'.center(line_width))
puts 'do you sit down? (yes or no)'
sit = gets.chomp

if sit == 'yes'
  puts ('you sit down, and look at her. She purses her lips, and speaks...'.center(line_width))

  puts 'I am a fortune-teller, do you want your fortune read?'
accept_reading = gets.chomp

  if accept_reading != 'yes'
    puts 'I forsee that your future is shrouded in mystery.'; puts 'come back when you are brave enough to remove the veil of time.'
  
  else
    puts 'ahh- you desire to see what lays ahead for you, I see. You have come to the right place.'
  
    puts 'tell me, what is your name?'
    name = gets.chomp
  
    puts 'Tell me ' + name + ' what questions do you have for me?'; puts 'ask me questions, and when you are done, say "ENOUGH!"'
    puts 'understand?'
    understand = gets.chomp
      if understand != "yes"
        puts 'If you cannot folow these simple rules, you are not ready to see the future. Goodbye.'
      else
        puts 'good, lets begin. You may ask a question about your future.'
      
  
        question = ''
  
          while question != 'ENOUGH!'
            question = gets.chomp
              if question != 'ENOUGH!'
                answer = ['The answer is here, in the cards- look more closely.' ,'The future is murky for you.' , 'Ahh- that is indeed possible.' , 'I that is not in the cards for you... but then maybe I need to reshuffle.' , 'to know that, I will need to look through the yoke of a dragon\'s egg... oh no! my last one is broken! You will have to ask that later.' ]
                random_answer = rand(4)
                puts answer[random_answer]
                
              else
               puts 'You have had enough of depths of the future?'; puts 'Very well. I know that we will meet again!'
               puts 'you stand up, shaken and unsure about the revelations the woman provided and back slowly out of the room.'
              end
      end
    end
  
  end
  
else
  puts( 'You look into her whiteish eyes and a chill runs down your spin.'.center(line_width))
  puts( ' You drop the curtain and run.'.center(line_width))
end      

