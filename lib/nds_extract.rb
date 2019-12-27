$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  #nil
  
  directors_index = 0
  total = {}
  
  while directors_index < nds.length do
    name = nds[directors_index][:name]
    total[name] = 0
    movie_index = 0
    
    while j<nds[directors_index][:movies].length do 
      total[name] += nds[directors_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    directors_index += 1
  end 
  total
end
