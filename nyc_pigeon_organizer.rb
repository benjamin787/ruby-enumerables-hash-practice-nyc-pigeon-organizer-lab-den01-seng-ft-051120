require "pry" 
def nyc_pigeon_organizer(data)
  
  # make array of names 
  
  pigeons = data[:color].reduce { | memo, (key, value) |
    memo = value[0] if !memo
    memo = memo + value
    memo
  }
  
  #  value.reduce { | memo, (colors, names_array) |
   #   names_array.reduce { | memo, x |
       # binding.pry 
    #    memo = memo + x 
     #   memo
    
      #}
     # binding.pry
      #memo
    #}
    
   # binding.pry
     
   # memo
  #}
  
    
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