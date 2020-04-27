require "pry" 
def nyc_pigeon_organizer(data)
  
  # make array of names 
  
  pigeons = data.inject { | memo, (key, value) |
    
    value.inject { | memo, (color, names_array) |
    
      names_array.inject { |memo, x|
        
        memo = memo + x
        memo
      }
      memo
      
    }
    
    memo
  }
  
    
# remove repeats

  pigeons = pigeons.uniq
  
  # form template hash 
  binding.pry 
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