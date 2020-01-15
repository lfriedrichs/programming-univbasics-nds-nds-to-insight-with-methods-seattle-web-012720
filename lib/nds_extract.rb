$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  director_index = 0
  result = {}
  while director_index < director_data.length 
    grand_total = 0 
    movie_index = 0 
    while movie_index < director_data[:movies]
      grand_total += director_data[:movies][movie_index][:worldwide_gross]
      movie_index += 1 
    end
    result[:name] = grand_total
    director_index += 1 
  end
  result
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nil
end
