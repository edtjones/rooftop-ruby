module Rooftop
  class MenuItem
    def initialize(args)
      args.each do |k,v|
        instance_variable_set("@#{k}", v)
        self.class.send(:attr_accessor, k)
      end
    end

    def id
      self.instance_variable_get(:"@ID")
    end

    def ==(other)
      other.class == self.class && other.respond_to?(:id) && other.id == id
    end
  end
end