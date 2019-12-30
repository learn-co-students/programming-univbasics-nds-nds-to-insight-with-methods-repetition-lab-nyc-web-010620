$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

require 'pry'

# def gross_for_director(d)
#   total = 0
#   index = 0
#     while index < d[:movies].length do
#       total += d[:movies][index][:worldwide_gross]
#       index += 1
#     end
#   total
# end

# def directors_totals(source)
#   result = {}
#   director_index = 0
#   while director_index < source.size do
#     director = source[director_index]
#     result[director[:name]] = gross_for_director(director)
#     director_index += 1
#   end
#   result
# end


# def list_of_directors(source)
# array = []
# i = 0 
#   while i < source.length do 
#     array.push(source[i][:name])
#   i += 1
#   end
#   array
# end

# def total_gross(nds)
#   # Write this implementation
#   #
#   # Should use methods:
#   # 1. directors_totals: returns a Hash of { dir_name => gross }
#   # 2. list_of_directors: names provides an Array of directors names (use
#   #
#   # Visit each key (i.e. director name), look up the value in the hash
#   # returned by directors_totals, and add it to a running total. When done,
#   # return the total
  
#   row_index = 0 
#   total = 0 
#   while row_index < nds.length do 
#     element_index = 0 
#       while element_index < nds[row_index][:movies].length
#       total += nds[row_index][:movies][element_index][:worldwide_gross]
#       element_index += 1 
#       end 
#     row_index += 1 
#   end 
#   total
# end


def total_gross(directors_database)
  total = 0 
  directors_database.each do |name,value|
      name[:movies].each do |movie_data|
        total += movie_data[:worldwide_gross] 
    end 
  end 
  return total 
end 

def list_of_directors(aoh)
  aoh.map do |nameObj|
    nameObj[:name]
  end 
end 

def gross_for_director(single_director_hash)
total = 0 
  single_director_hash[:movies].each do |mov_obj|
    total += mov_obj[:worldwide_gross]
  end
  total 
end 

def directors_totals(source)
  director_hash = {}
    source.each do |key,value|
      total = 0
        key[:movies].each do |movie_obj|
         total += movie_obj[:worldwide_gross]
          director_hash[key[:name]] = total 
      end 
    end 
  director_hash
end




















