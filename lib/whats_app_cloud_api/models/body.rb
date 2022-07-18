# whats_app_cloud_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WhatsAppCloudApi
  # Body Model.
  class Body < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The body content of the message. Emojis and markdown are supported. Links
    # are supported.
    # @return [String]
    attr_accessor :text

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['text'] = 'text'
      @_hash
    end

    # A mapping from model property names to types.
    def self.types
      @_types = {} if @_types.nil?
      @_types['text'] = 'String'
      @_types
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(text = nil)
      @text = text unless text == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      names.each do |key, value|
        has_default_value = false
        if !((hash.key? value) || (optionals.include? key)) && !has_default_value
          raise ArgumentError,
                "#{value} is not present in the provided hash"
        end
      end

      # Extract variables from the hash.
      text = hash.key?('text') ? hash['text'] : SKIP

      # Create object from extracted values.
      Body.new(text)
    end
  end
end
