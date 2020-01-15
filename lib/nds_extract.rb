$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  result = {}
  director = 0
  while director_data[director]
    director_total_gross = 0 
    movie = 0
    while director_data[director][:movies][movie]
      director_total_gross += director_data[director][:movies][movie][:worldwide_gross]
      movie += 1
    end
    result[director_data[director][:name]] = director_total_gross
    director += 1
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
