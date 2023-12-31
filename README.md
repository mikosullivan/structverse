# Structverse

Structverse provides a simple way to walk through tyhe structure of a hash or
array. Call `Structverse.walk`, passing in the hash or array. The `walk` method
will return each hash and array in the structure. Only hashes as arrays are
returned.

```ruby
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
```

## Installation

The usual:

```bash
sudo gem install structverse
```
Or however you like to installgems. It's just a single file.


## Author

Mike O'Sullivan
mike@idocs.com

## History

| version | date          | notes                         |
|---------|---------------|-------------------------------|
| 1.0     | June 22, 2023 | Initial upload.               |