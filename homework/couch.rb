class Couch
  class Couch
    def initialize(pillows, cushions)
      @pillows = pillows
      @cushions = cushions
    end

    def pillow_colors
      @pillows.join(", ")
    end

    def cushion_colors
      @cushions.join(", ")
    end

    [:pillow_colors, :cushions_colors].each do |s|
      define_method("#{s}_colors") do
        instance_variable_get("#{s}@").join(' ')
      end
    end
  end
end