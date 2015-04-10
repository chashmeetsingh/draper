module Draper
  module Equality
    # Compares self with a possibly-decorated object.
    #
    # @return [Boolean]
    def ==(other)
      super || Equality.test_for_decorator(self, other)
    end

    # Compares an object to a possibly-decorated object.
    #
    # @return [Boolean]
    def self.test(object, other)
      object == other || test_for_decorator(object, other)
    end

    # @private
    def self.test_for_decorator(object, other)
      other.respond_to?(:decorated?) && other.decorated? &&
      other.respond_to?(:object) && test(object, other.object)
    end
  end
end