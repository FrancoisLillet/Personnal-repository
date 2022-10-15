def solution(string)
  array=string.chars
  i=0
  j=0
  new_array=[]
  array.each { |letter|
    if letter==letter.upcase
      new_array[i+j]=" "
      j+=1
    end
    new_array[i+j]=letter
    i+=1 
  }
  new_array.join
end