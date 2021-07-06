def nyc_pigeon_organizer(pigeon_data)
 new_hash={}
   pigeon_data.each do |key, value|
    value.each do |second_key, second_value|
      second_value.each do |third_key|
        if !new_hash[third_key]
          new_hash[third_key] = {}
        end

        if !new_hash[third_key][key]
          new_hash[third_key][key] = []
        end

        new_hash[third_key][key] << second_key.to_s

      end
    end
  end
  new_hash
end