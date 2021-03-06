$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  directors_index = 0
  total = {}
  
  while directors_index < nds.length do
    directors_name = nds[directors_index][:name]
    total[directors_name] = 0
    movie_index = 0
    
    while movie_index < nds[directors_index][:movies].length do 
      total[directors_name] += nds[directors_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    directors_index += 1
  end 
  total
end

