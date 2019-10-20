def nyc_pigeon_organizer(data)
  pigeon_hash = {}
  
  data.each do |attribute, attr_values|
    puts "data.each...."
    puts attribute
    puts attr_values
    
    attr_values.each do |value, names|
      puts "attr_values.each...."
      puts value
      puts names
      
      names.each do |name|
        puts "names.each...."
        puts name
        
        if !pigeon_hash[name]
          pigeon_hash[name] = {}
        end
        
        if !pigeon_hash[name][attribute]
          pigeon_hash[name][attribute] = []
        end
        
        pigeon_hash[name][attribute].push(value.to_s)
        
      end # end names.each
      
    end #end attr_values.each
    
  end #end data.each
    
  puts "pigeon_hash = #{pigeon_hash}"
  puts "END"
  pigeon_hash
end
