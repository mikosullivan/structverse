# Structverse

Structverse provides a simple way to walk through the structure of a hash or
array in Ruby. Call `Structverse.walk`, passing in the hash or array. The `walk`
method yields each hash and array in the structure. Only hashes and arrays are
yielded.

[import]: {"path": "walk.rb"}

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