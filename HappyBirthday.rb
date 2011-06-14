require "json"

BARS_HASH = {
  :backRoom => {
    :name =>"The back room", 
    :style => "With drinks in teacups and a hidden entrance, this hideaway boasts all the glamour of a 20s-era speakeasy.", 
    :address => "102 Norfolk", 
    :url => "http://www.worldsbestbars.com/new-york/lower-east-manhattan/the-back-room-bar-in-new-york.htm"
     },
  :rooftop => {
    :name =>"230 Fifth",
    :style => "Amazing views of downtown, fully red robes to stay warm, no cover, and two levels of good drinks.",
    :address =>"230 5th Avenue",
    :url =>"http://www.230-fifth.com/"
     },
  :carnival => {
    :name =>"Carnival",
    :style => "Its atmosphere invites excess, with a full candy stand, a \"Fun House\" dance hall and a private party bachelor pad fit with flatscreens and space-age divans. Also on hand: alcoholic snow cones, cotton-candy cocktails, and pulled-pork sliders.",
    :address => "222 W 44th St (btw 7th & 8th)" ,
    :url => "http://carnivalnyc.com/"
     },
  :barcade => {
    :name => "Barcade",
    :style =>"Vintage arcade games and beer",
    :address => "388 Union Ave., Brooklyn, NY 11211",
    :url => "barcadebrooklyn.com"
        }
  
   }  

def themeBar
  line_width = 50
  while true
    puts( 'Theme bars are amazing!'.center(line_width))
    puts "Do you want the theme to be historical or crazy?"
    type = gets.chomp.downcase
        
    if type == 'historical'
      puts BARS_HASH[:backRoom]
      break
    
    elsif type == 'crazy'
      p BARS_HASH[:carnival]
      break
    
    else
      puts "please enter the historical or crazy"
    end
  end
end

def classyBar
  puts 'There is nothing like a classy bar for great views and feeling like Don Draper. I\'d try:'
  puts
  p BARS_HASH[:rooftop]
end

def diveBar
  puts 'Not everyone admits to it, but everyone loves a good dive bar. Here are the best....'
  puts
  p BARS_HASH[:barcade]
end


def happyBirthday
puts "What is your first name?"
name = gets.chomp.downcase
if name == "matt" || name == "matthew" 
    puts "Happy 21st Birthday!"
    puts 'Would you like some suggestions for bars in Manhatten?'
    suggestion = gets.chomp.downcase

  while true
    sug = false
    list = false
  
      if suggestion == 'yes' || suggestion == 'y'
        puts "Great! I can either give you a list of awesome bars, or I can help you choose. What would you like me to do?"
        puts " 'list' or 'suggest'"
        choice = gets.chomp.downcase
            
            if choice == 'list' 
              puts 'Here is a list of the best bars in Manhatten: '
              list = true
            
          
            elsif choice == 'suggest'
              puts 'very well, let me narrow down the type of bar you are interested in.'
              sug = true
            end
      break
      
    elsif suggestion == 'no' || suggestion == 'n'
      puts 'Well, I guess you already know of all the right places to go. You have no excuse for not having an EPIC 21 run. (or 21 happy hour-after work... etc)'
      puts
      puts "Have a kickRad 21st Birthday and a great year!"
      break
      
    else
      puts "please enter yes or no. Seriously, you are 21, this is not that hard."
      puts 'Would you like some suggestions for bars in Manhatten?'
      suggestion = gets.chomp.downcase
    end
end

else
 puts "I'm sorry, this message was not intended for you. Goodbye."
end

if sug == true
  while true
    
    puts "What type of Bar do you want to go to?"
    puts "Your options are: a) a theme bar, b) a classy Bar, or c) a Dive bar"
    puts 'Please enter the letter of your choice:  '
    bar = gets.chomp.downcase
    
      if bar == 'a'
        themeBar
        break
        
      elsif bar == 'b'
        classyBar
        break
        
      elsif bar == 'c'
        diveBar
        break
      
      else
        puts "please enter a, b, or c"
      end
    
  end
     
      puts
      puts "Have a kickRad 21st Birthday and a great year!"
      
end


if list == true
  BARS_HASH.to_json
  puts JSON.pretty_generate(BARS_HASH)
  puts
  puts
  puts "Have a kickRad 21st Birthday and a great year!"
  end
end

happyBirthday