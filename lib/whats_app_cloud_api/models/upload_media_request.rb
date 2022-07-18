# whats_app_cloud_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WhatsAppCloudApi
  # UploadMediaRequest Model.
  class UploadMediaRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Messaging service used for the request. In this case, use whatsapp.
    # @return [String]
    attr_accessor :messaging_product

    # Path to the file stored in your local directory. For example:
    # "@/local/path/file.jpg".
    # @return [String]
    attr_accessor :file

    # Type of media file being uploaded. See Supported Media Types for more
    # information. 
    #  Supported options for images are: `image/jpeg`, `image/png` 
    #  Supported options for documents are: `text/plain`, `application/pdf`,
    # `application/vnd.ms-powerpoint`, `application/msword`,
    # `application/vnd.ms-excel`,
    # `application/vnd.openxmlformats-officedocument.wordprocessingml.document`,
    # `application/vnd.openxmlformats-officedocument.presentationml.presentation
    # `, `application/vnd.openxmlformats-officedocument.spreadsheetml.sheet`
    # Supported options for audio are: `audio/aac`, `audio/mp4`, `audio/mpeg`,
    # `audio/amr`, `audio/ogg`, `audio/opus`
    # Supported options for video are: `video/mp4`, `video/3gp`
    # Supported options for stickers are: `image/webp`
    # @return [String]
    attr_accessor :type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['messaging_product'] = 'messaging_product'
      @_hash['file'] = 'file'
      @_hash['type'] = 'type'
      @_hash
    end

    # A mapping from model property names to types.
    def self.types
      @_types = {} if @_types.nil?
      @_types['messaging_product'] = 'String'
      @_types['file'] = 'String'
      @_types['type'] = 'String'
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

    def initialize(messaging_product = nil,
                   file = nil,
                   type = nil)
      @messaging_product = messaging_product unless messaging_product == SKIP
      @file = file unless file == SKIP
      @type = type unless type == SKIP
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
      file = hash.key?('file') ? hash['file'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP

      # Create object from extracted values.
      UploadMediaRequest.new(messaging_product,
                             file,
                             type)
    end
  end
end
