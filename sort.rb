def sort array
  recursive_sort,[]
  # so this is two things, a method"recurisve sort" and an empty array
 end


 def recurive_sort unsorted, sorted
  if unsorted.lenght <=0
    return sorted
 end
 # this saying that if there are no words in the unsorted array, return the already sorted list.
 
 smallest = unsorted.pop
 still_unsorted  []
 
 #what is the bit inside the pipes for?
 unsorted.each do |tested object| 
   if tested_object < smallest
     still_unsorted.push smallest
     #what is push?
     smallest = tested object
   else
     still_unsorted.push tested_object
   end
end
 
 sorted.push smalest
 
 rec_sort still_unsorted, sorted
 
 end
 
 puts(sort(['can','feel', 'singing','like', 'a','can']))