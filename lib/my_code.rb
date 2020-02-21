def map(array)
  new = []
  i = 0
  while i < array.length do
    new << yield(array[i])
    i += 1
  end
  new
end

#def reduce(array, start = 0)
#  total = 0
#  i = 0
#    while i < array.length do
#      if array[i].class == Integer
#        total += array[i]
#      elsif !array[i]
#        total = false
#      else
#        start = true
#        total = true
#      end
#      i += 1
#    end
#  pp yield(start, total)
#end

def reduce(array, start = 0)
  total = start
  i = 0
  while i < array.length do
    total = yield(total, array[i])
    i += 1
  end
 pp total
end
  
  
  
  
  
  
  
  
  
  
  
  