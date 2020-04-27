require "pry" 
def nyc_pigeon_organizer(data)
  
  # make array of names 
  
  pigeons = data[:color].reduce { | memo, (key, value) |
    memo = value[0] if !memo
    memo = memo + value
    memo
  }
  
  # cleanup array 
  
  pigeons = pigeons.drop(1).flatten.uniq
  
  # form template hash 
  
  answer = pigeons.reduce { | omem, a |
    binding.pry 
  
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