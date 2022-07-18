# whats_app_cloud_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WhatsAppCloudApi
  # Template Model.
  class Template < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Name of the template.
    # @return [String]
    attr_accessor :name

    # Specifies the language the template may be rendered in. Only the
    # deterministic language policy works with media template messages.
    # @return [Language]
    attr_accessor :language

    # Array of components objects containing the parameters of the message.
    # @return [List of Component]
    attr_accessor :components

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['language'] = 'language'
      @_hash['components'] = 'components'
      @_hash
    end

    # A mapping from model property names to types.
    def self.types
      @_types = {} if @_types.nil?
      @_types['name'] = 'String'
      @_types['language'] = 'Language'
      @_types['components'] = 'Component[]'
      @_types
    end

    # An array for optional fields
    def self.optionals
      %w[
        components
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name = nil,
                   language = nil,
                   components = nil)
      @name = name unless name == SKIP
      @language = language unless language == SKIP
      @components = components unless components == SKIP
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
      name = hash.key?('name') ? hash['name'] : SKIP
      language = Language.from_hash(hash['language']) if hash['language']
      # Parameter is an array, so we need to iterate through it
      components = nil
      unless hash['components'].nil?
        components = []
        hash['components'].each do |structure|
          components << (Component.from_hash(structure) if structure)
        end
      end

      components = SKIP unless hash.key?('components')

      # Create object from extracted values.
      Template.new(name,
                   language,
                   components)
    end
  end
end
