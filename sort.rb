def sort arr
  rec_sort arr, [] #what exactly does this do, in this context?
end

#so we have an array, that is going to hold all the words we put in to it at the bottom. It will then be run through the sort method below.

def rec_sort unsorted, sorted 
#we are passing two arguments in to this method, an unsorted array and a sorted array. Unsorted and sorted can exist because we run them through teh def sort arry. Which does....
  if unsorted.length <= 0
    return sorted
  end
  # if the unsorted array is 0 or smaller, there is nothing left to sort.
  to_eval = unsorted.pop # to_eval is the word we want to evalutate or sort. We are pulling the last word out of the array unsorted. Where do we define this array?
  still_unsorted = []
  
  unsorted.each do |evaluated_word| # to each word in the unsorted array, do the following...
    if evaluated_word < to_eval
      still_unsorted.push to_eval
      to_eval = evaluated_word
      #if the already evaluated word is smaller than the word you are trying to evaluate, push the word you are evalutating to the still_unsorted array
    else
      still_unsorted.push evaluated_word
      #otherwise, push the already evaluated word into the unsorted array.
    end
  end
  
  sorted.push to_eval
  # push the word you are evaluating to sorted (why-couldn't it still be sitting in the still_unsorted array?)
  
  rec_sort still_unsorted, sorted
  
  #run throug the process again.
end

 puts(sort(['can','feel','singing','like','a','can']))