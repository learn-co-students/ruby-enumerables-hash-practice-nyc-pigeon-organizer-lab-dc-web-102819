require "pry"

def nyc_pigeon_organizer(data)
  # grab all pigeon names
  all_pigeons = data[:gender][:male] + data[:gender][:female]

#create an empty hash of pigeon properties to fill in
new_pigeon_hash = {}
all_pigeons.each { | pigeon |
  new_pigeon_hash[pigeon] = { 
    color: [],
    gender: [], 
    lives: []
  }
}

#cycle_and_match_colors
data[:color].each { | value, pigeon_array |
  pigeon_array.each { | pigeon |
    value_string = value.to_s
    new_pigeon_hash[pigeon][:color] << value_string
        }
    }


#cycle and match gender
data[:gender].each { | value, pigeon_array |
  pigeon_array.each { | pigeon |
    value_string = value.to_s
    new_pigeon_hash[pigeon][:gender] << value_string
        }
    }

#cycle and match residence
data[:lives].each { | value, pigeon_array |
  pigeon_array.each { | pigeon |
    new_pigeon_hash[pigeon][:lives] << value
        }
    }

puts new_pigeon_hash
new_pigeon_hash


end
