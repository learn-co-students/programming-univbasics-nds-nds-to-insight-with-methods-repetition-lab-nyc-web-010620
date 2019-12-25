$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  new_array=[]
  director_index=0
    while director_index < source.size do
   
   new_array<< source[director_index][:name]
  # Write this implementation
  director_index+=1
end
return  new_array
end

def total_gross(source)
  #source={}
 # puts source
 total_gross=0 
  director_index = 0
 # source=directors_totals(directors_database)
 while  director_index<source.size do
  #source=directors_totals(directors_database)
   director = source[director_index]
  total_gross+=gross_for_director(director)
  #puts total_gross
  director_index+=1 
end
 
 return total_gross
end
 
  
  
  # Write this implementation
  #end
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total



