require 'helper'

# Test walking a structure.

class StructverseTestHash < Minitest::Test
  # test getting and altering hashes
  def test_struct
    # expected elements
    hashes = {'Puck'=>true, 'Snout'=>true, 'Mote'=>true}
    arrays = {'Peaseblossom'=>true, 'Bottom'=>true}
    
    # test structure
    struct = get_struct()
    
    # should only get hashes and arrays
    Structverse.walk(struct) do |struct|
      assert struct.is_a?(Hash) || struct.is_a?(Array)
      
      # delete element from hashes or arrays using the first element as key
      if struct.is_a?(Hash)
        hashes.delete struct.keys[0]
      elsif struct.is_a?(Array)
        arrays.delete struct[0]
      end
    end
    
    # should be no more expected values
    assert hashes.empty?
    assert arrays.empty?
  end
end