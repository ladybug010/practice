#the q_array holds all the questions that need to be asked
q_array = ['Was he on time?', 'Did he show up at all?', 'Did he call first?', 'Did he have a good excuse?', 'Has he been prompt other times?', 'Was he well dressed?', 'Did he conduct himself professionally?', 'Can he answer the basic questions?', 'Can he complete the technical tests?', 'Do you think he has the skills to learn?', 'Does the team like him?', 'Could they work well with him anyway?']

#the a_array contains the two possible answers that could be returned
t_array = [5,3,-3,5,5,7,7,8,10,-1,-1]
f_array = [1,2,-2,4,-2,6,-2,-2,-2,11,-2]

# the r_array should hold the final responses that could be returned
r_array = ['hire him', 'don\'t hire him', 'reschedule and try again']




def ask_rec(question)
 puts question
 reply = gets.chomp.downcase
r_anwer = ''
 if reply == 'yes'
    r_anwer = true

 elsif reply == 'no'
    r_anwer = false
 else
    puts 'please answer yes or no'
    puts
    puts
    ask_rec question
  end

return r_anwer
end



array_index = 0
while array_index >= 0

 if ask_rec(q_array[array_index]) == true
    array_index = t_array[array_index]
 else
    array_index = f_array[array_index]
 end
end

#puts array_index

if array_index == -1
 puts 'Hire Him'
 
elsif array_index == -2
 puts 'Don\'t hire him.'
 
elsif array_index == -3
 puts 'Reschedule and try again.'
 
end

