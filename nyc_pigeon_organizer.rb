require "pry" 
def nyc_pigeon_organizer(data)
  
  # make array of names 
  
  value = data.reduce { | memo, (key, value) |
    
    memo = memo + value
    memo
      
  }
  
    
# remove repeats
  binding.pry 
  pigeons = pigeons.uniq

  # form template hash 
  
  answer = pigeons.reduce { | omem, a |
  
    omem[a] = { :color => [], :gender => [], :lives => [] }
    omem
  }
  
# fill hash

  data.each { |(k, v)|
    v.each { |(color, names_array)|
      names_array.each { |b|
        answer[b][k] << [color.to_s] 
      }
    }
  }
  
  answer
end