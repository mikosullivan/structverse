#!/usr/bin/ruby -w
require 'structverse'

hsh = {
  "Puck": true,
  
  "Oberon": {
    "Titania": [
        "Peaseblossom",
        "Mustardseed",   
        { "Mote": true },
        [ "Bottom", "Flute" ]
      ]
  }
}

Structverse.walk(hsh) do |struct|
  puts struct.class
end

# => Hash
# => Hash
# => Array
# => Hash
# => Array