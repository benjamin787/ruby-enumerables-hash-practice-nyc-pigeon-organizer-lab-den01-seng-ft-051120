require "pry" 
def nyc_pigeon_organizer(data)
  
  # make array of names 
  
  pigeons = data.reduce { | memo, (key, value) |
    value.reduce { | omem, (colors, names_array) |
      names_array.reduce { | blah, x |
       # binding.pry 
        blah = blah + x 
        blah
    
      }
     # binding.pry
      omem = blah
    }
    
   # binding.pry
    memo = omem 
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