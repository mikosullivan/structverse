module Structverse
  VERSION = '1.0'
  
  # walk
  
  # Walks an array or hash structure.
  #   Structverse.walk(hsh) do |struct|
  #     puts struct.class
  #   end

  def self.walk(struct, &block)
    if struct.is_a?(Hash) or struct.is_a?(Array)
      yield struct
      
      if struct.is_a?(Hash)
        struct.values.each do |v|
          walk v, &block
        end
        
      elsif struct.is_a?(Array)
        struct.each do |v|
          walk v, &block
        end
      end
    end
  end
end