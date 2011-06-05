# define the Dragon class and his initial internal states.

class Dragon
  def initialize (name)
    @name = name
    @asleep = false  # he starts out awake
    @stomach = 5  #hunger will go from 1-10, with 10 being full
    @bladder = 5 #bladder will go from 1-10 will 10 being an emergency
    @fun = 5 #fun will go from 1-10, with 10 being full fun
    @energy = 5 #energy will go from 1-10, with 10 being fully rested
    
    puts @name + ' hatches. He blinks his eyes and looks at you.'
    
  end
  
  
#define the actions you can take with your dragon  
  def feed
    puts 'You feed ' + @name + '. He looks satisifed.'
    puts
    @stomach = 10
    passageOfTime
  end
  
  def walk
    puts 'you take ' + @name + ' outside for a walk. He relieves himself under a tree.'
    puts
    @bladder = 1
    passageOfTime
  end
  
  def toss
    puts 'you toss ' + @name + ' in the air.'
    puts
    puts ' He giggles and hiccups a spurt of fire, which singes your arm hair.'
    puts
    @fun = 10
    passageOfTime
  end
  
  
  def rock
    puts
    puts 'you rock ' + @name + ' gently.'
    puts
    puts 'he yawns, closes his eyes and briefly dozes off.'
    puts
    @asleep = true
      if @asleep
        @asleep = false
        puts 'but wakes up when you stop.'
        puts
      end
    #@engery = @engery + 2
    passageOfTime
  end
  
  def putToBed
    puts
    puts 'You tuck ' + @name + ' in to bed, he snuggles in and falls asleep.'
    puts
    @asleep = true
    2.times do
      if @asleep
        passageOfTime
      end
      
      if @asleep
        puts @name + ' snores, filling the room with puffs of smoke.'
        puts
      end
    end
    
   if @asleep
     @asleep = false
     puts @name + ' stretches and wakes up slowly.'
     puts
   end
   @energy = 10
 end
 
 def ignore
    passageOfTime
 end
  
  
  
#define the actions that go on inside your dragon under private- as a person can not interact with them or see how they happen

private
def hungry?
  @stomach <= 2
end

def potty?
  @bladder >= 8
end

def bored?
 @fun <= 2
end

def tired?
  @energy <= 2
end

def passageOfTime
  
  if @stomach >= 1 # if he is not already starving
    #move food from stomach into bladder
     @stomach = @stomach - 1
     @bladder = @bladder +1
   elsif @stomach <= 10 #the dragon is starving
     if @asleep
       @asleep = false
       puts @name + ' wakes up suddenly, starving.'
       puts
     end
       puts 'In desperation, ' + @name + ' eats you. While your story ends here, ' + @name + ' flies away and finds a new home, where he can overcome his childhood neglect.'
       puts
       puts
       exit #quits program
   end
   
   if @bladder >= 10
     puts
     puts 'Woops! ' + @name + ' had an accident on your floor...'
     @bladder = 1
     puts
   end
   
    if @asleep == false
       if @fun >= 1 # if the dragon isn't already SUPER bored
         @fun = @fun -1
       elsif @fun < 1 # if dragon is bored, he will entertain himself
          puts @name + ' is so bored, breathes fire on one of your old socks and plays in the ashes. This entertains him.'
          @fun = 10
       end
      
       if @energy >= 1 #if the dragon is not already exhausted
         @energy = @energy -1
       elsif @energy <1 #if the dragon is exhausted
         puts
         puts @name + ' staggers and collapses in exhaustion. He takes a long nap and wakes up refreshed, but a little grumpy.'
         puts
         @energy = 10
       end
     end

   if tired?
     if @asleep == false
       puts
       puts @name + ' yawns. He looks very sleepy, you should put him to bed.'
       puts
      end 
   end  
   
   if bored?
     if @asleep == false
       puts
       puts @name + ' is getting bored. You should toss him in the air.'
       puts
     end
   end
   
   if hungry? 
     if @asleep
       @asleep = false
       puts
       puts @name + 'wakes up suddenly.'
       puts
     end
     puts
     puts @name + ' \'s stomach growls loudly... you should feed him.'
     puts
   end
   
   if potty?
     if @asleep
       @asleep = false
       puts
       puts @name + ' groans and wakes up.'
       puts
     end
     puts @name + ' does a potty dance. (you should walk him.)'
     puts
   end
   
 end
end
 

start = false #user is not ready to start, because they have not purchased an egg.

 
 def takeCare
   
    puts 'One day, while walking through an old part of town, you see a small green door standing slightly open.'
    puts
    puts 'You push into the door and find yourself in a bare room.'
    puts 'in the corner a hunched old man sits near a basket of large, speckled eggs.'
    puts 'you take a step closer, trying to get a better look.'
    puts
    puts 'the old man stirs, notices you and says:'
   
   while true
  
     puts '\'Would you like to buy a dragon egg?\' (yes or no)'
     buyEgg = gets.chomp
     if buyEgg.downcase == 'yes' || buyEgg.downcase == 'no'
       if buyEgg.downcase == 'yes'
          puts
          puts 'wonderful! Please select the egg you would like.'
          puts
          puts 'you reach into the basket and select one of the eggs. As you turn to leave, the old man hands you a handwritten slip of paper and says \'you must do only what it says on the list to cake care of your new dragon.\''
          puts
          
          start = true
          break
       
       else
           puts
           puts 'Thankyou for stopping by the shop, but if you are not interested in buying an egg, I will have to ask you to leave.'
           puts
           puts 'You thank the man and leave the store.'
           exit
       end
     else
       puts
       puts 'I\'m sorry, my ears aren\'t what they used to be. You need to answer clearly, yes or no.'
       puts

     end
   end
   

   if start == true #if the user has purchased an egg, they are ready to hatch a new dragon.
     puts 'You take the egg home, and watch as the shell begins to crack.'
     puts 'what will you name your Dragon?'
     eggName = gets.chomp
     pet = Dragon.new(eggName) # this will create a new dragon and name him
     puts
   end
   
   
   #give list of actions that you could do.  
   careList_array = ['feed him','walk him','toss him in the air','rock him','put him to bed', 'hire a sitter', 'ignore']
   
    puts 'He needs you to take care of him. You check the care list the old man gave you:'
    puts
    
  while true
     puts careList_array
     puts
     puts 'what would you like to do?'
     toDo = gets.chomp
 
    if toDo == careList_array[0]
      pet.feed
      puts
    elsif toDo == careList_array[1]
      pet.walk
      puts
    elsif toDo == careList_array[2]
      pet.toss
      puts
    elsif toDo == careList_array[3]
      pet.rock
      puts
    elsif toDo == careList_array[4]
      pet.putToBed
      puts
    elsif toDo == careList_array[5]
      puts
      puts 'you hire a dragonsitter and take the rest of the day off.'
      exit
    elsif toDo == careList_array[6]
      pet.ignore
      puts
      puts 'you ignore him as he follows anxiously at your heels.'
      puts
    else
      puts
      puts "Remember what the old man said, make sure your answer EXACTLY matches one of the following:"
      puts
    end
    
  end
end
 
 takeCare

 
    




    
