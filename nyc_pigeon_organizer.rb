require "pry"
def nyc_pigeon_organizer(data)
  # write your code here!
 org_birds = Hash.new(0)
    filtered_names = []
    data.each do |a,b|
      b.each do |x,y|
        filtered_names << y.uniq
      end 
    end
    filtered_names.flatten!
    filtered_names.uniq!
    
      filtered_names.each do |name|
         org_birds[name]={:color=>[], :gender=>[], :lives=>[]}
        end
        
        #------------------ COLORS--------------------
        
colors_arr = []
pigeon_keys = org_birds.keys
for things in data[:color]
    colors_arr << things
    colors_arr
end
j= 0 #pigeon iterater
  while j < pigeon_keys.length
    i = 0 #empty_arr iterater
    while i < colors_arr.length
          if colors_arr[i][1].include?(pigeon_keys[j])
              # binding.pry
  org_birds[pigeon_keys[j]][:color].push(colors_arr[i][0].to_s)
          end
          i += 1
        end
        j += 1  
        
    end
  
        #--------------------------------------
  org_birds
  
  
end
