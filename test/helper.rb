require 'structverse'
require 'json'


def get_struct
  Dir.chdir File.dirname(__FILE__) do
    return JSON.parse( File.read('./struct.json') )
  end
end