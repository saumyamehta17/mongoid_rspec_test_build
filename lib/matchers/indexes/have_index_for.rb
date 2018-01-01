module Mongoid
  module Matchers
    module Base
      class HaveIndexFor

        def initialize(index_key)
          @index_key = index_key.symbolize_keys
        end

        def with_options(index_options = {})
          @index_options = index_options
          self
        end

      end 
    end   
  end
end    