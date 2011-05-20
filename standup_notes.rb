
require 'yaml'

def ask (question)
  puts question
  gets.chomp
end
 
def take_notes
  
  standup_notes_hash = {}
  
  while true
    puts 'Do you have a team member to enter stand up notes for?'
    notes = gets.chomp
        
      if notes == 'no'
        puts 'thank you, please check the cooresponding file to retreieve today\'s notes.'
        break
        
      elsif notes == 'yes'
        name = ask 'Team Member\'s Name:'
        standup_notes_hash[name]= {}
        standup_notes_hash[name][:yesterday] = ask "What did #{name} do yesterday?"
        standup_notes_hash[name][:today]  = ask "What is #{name} doing today?"
        standup_notes_hash[name][:blockers]  = ask "Does #{name} have any blockers?"
        
      elsif notes != 'yes' || notes != 'no'
        puts
        puts 'please answer yes or no'
        puts
      end
  end
  puts standup_notes_hash
  standup_notes = standup_notes_hash.to_yaml
  
  filename = 'Standup_Notes.txt'

  File.open filename, 'w' do |f|
    f.write standup_notes
  end
  
end

take_notes
