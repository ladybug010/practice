
 
def take_notes
   more_notes = true
   #when the program is started, more notes will always be true.
   
  while (more_notes != false)
    puts 'Do you have a team member to enter stand up notes for?'
    notes = gets.chomp
        
      if notes == 'no'
        puts 'thank you, please check the cooresponding file to retreieve today\'s notes.'
        more_notes = false
        
      elsif notes == 'yes'
        def standup (question)
          puts question
          reply = gets.chomp
          return reply
        end
        
        name =  standup 'Team Member\'s Name?'
        yesterday = standup 'What did ' + name + ' do yesterday?'
        today = standup 'What is ' + name + ' doing today?'
        blockers = standup 'Does ' + name + ' have any blockers?'
        puts
        puts
        return name
        return yesterday
        return today
        return blockers
        puts
        
        #now I want to make a new array, for each person. Maybe this should be a hash?
        def make_array
          Array.new = name _ '_array'
        end
        
        make_array
        
        #after making that person's array, i want to push in the information from these notes, so that I can save the data for each person.

        name + '_array'.push name
        name + '_array'.push yesterday
        name + '_array'.push today
        name + '_array'.push blockers
      
        
      end
  end
end


take_notes

#need to output the information in the arrays to a text file, saved with that days date. The file name and location path should be printed to screen at the end.

