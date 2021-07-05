def nyc_pigeon_organizer(data)
  final_hash = {}
  data.each do |main_keys, inner_hash|
    #puts main_keys
    #puts inner_hash
    inner_hash.each do |inner_keys, nested_arrays|
      #puts inner_keys
      #puts nested_arrays
      nested_arrays.each do |bird_names|
    
        if !final_hash.has_key?(bird_names)
          final_hash[bird_names] = {}
        end
        
        if !final_hash[bird_names].has_key?(main_keys)
          final_hash[bird_names][main_keys] = []
        end
        if !final_hash[bird_names][main_keys].include?(inner_keys)
          final_hash[bird_names][main_keys].push(inner_keys.to_s)
        end
      end  
    end
  end
  p final_hash
end
nyc_pigeon_organizer({
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
      })

