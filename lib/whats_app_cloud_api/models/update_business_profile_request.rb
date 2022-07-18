# whats_app_cloud_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WhatsAppCloudApi
  # UpdateBusinessProfileRequest Model.
  class UpdateBusinessProfileRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The messaging service used for the request. Always set it to "whatsapp" if
    # you are using the WhatsApp Business API.
    # @return [String]
    attr_accessor :messaging_product

    # Address of the business.
    # @return [String]
    attr_accessor :address

    # Description of the business.
    # @return [String]
    attr_accessor :description

    # Industry of the business. This can be either an empty string or one of the
    # accepted values.
    # @return [VerticalEnum]
    attr_accessor :vertical

    # The contact email address (in valid email format) of the business.
    # @return [String]
    attr_accessor :email

    # The URLs associated with the business. For instance, a website, Facebook
    # Page, or Instagram. You must include the http:// or https:// portion of
    # the URL.
    # @return [List of String]
    attr_accessor :websites

    # URL of the profile picture generated from a call to the Resumable Upload
    # API.
    # @return [String]
    attr_accessor :profile_picture_url

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['messaging_product'] = 'messaging_product'
      @_hash['address'] = 'address'
      @_hash['description'] = 'description'
      @_hash['vertical'] = 'vertical'
      @_hash['email'] = 'email'
      @_hash['websites'] = 'websites'
      @_hash['profile_picture_url'] = 'profile_picture_url'
      @_hash
    end

    # A mapping from model property names to types.
    def self.types
      @_types = {} if @_types.nil?
      @_types['messaging_product'] = 'String'
      @_types['address'] = 'String'
      @_types['description'] = 'String'
      @_types['vertical'] = 'VerticalEnum'
      @_types['email'] = 'String'
      @_types['websites'] = 'String[]'
      @_types['profile_picture_url'] = 'String'
      @_types
    end

    # An array for optional fields
    def self.optionals
      %w[
        address
        description
        vertical
        email
        websites
        profile_picture_url
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(messaging_product = nil,
                   address = nil,
                   description = nil,
                   vertical = nil,
                   email = nil,
                   websites = nil,
                   profile_picture_url = nil)
      @messaging_product = messaging_product unless messaging_product == SKIP
      @address = address unless address == SKIP
      @description = description unless description == SKIP
      @vertical = vertical unless vertical == SKIP
      @email = email unless email == SKIP
      @websites = websites unless websites == SKIP
      @profile_picture_url = profile_picture_url unless profile_picture_url == SKIP
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
      messaging_product =
        hash.key?('messaging_product') ? hash['messaging_product'] : SKIP
      address = hash.key?('address') ? hash['address'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP
      vertical = hash.key?('vertical') ? hash['vertical'] : SKIP
      email = hash.key?('email') ? hash['email'] : SKIP
      websites = hash.key?('websites') ? hash['websites'] : SKIP
      profile_picture_url =
        hash.key?('profile_picture_url') ? hash['profile_picture_url'] : SKIP

      # Create object from extracted values.
      UpdateBusinessProfileRequest.new(messaging_product,
                                       address,
                                       description,
                                       vertical,
                                       email,
                                       websites,
                                       profile_picture_url)
    end
  end
end
