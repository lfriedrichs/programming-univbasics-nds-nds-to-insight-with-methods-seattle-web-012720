$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
    director_total_gross = 0 
    movie_index = 0
    while director_data[:movies][movie_index]
      director_total_gross += director_data[:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    director_total_gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  director_index = 0
  while director_index < nds.length 
    name = nds[director_index][:name]
    result[name] = gross_for_director(nds[director_index])
    director_index += 1
  end
  result
end
