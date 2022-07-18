# whats_app_cloud_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WhatsAppCloudApi
  # RegistrationController
  class RegistrationController < BaseController
    def initialize(config, http_call_back: nil)
      super(config, http_call_back: http_call_back)
    end

    # Used to register a phone number or to migrate WhatsApp Business Accounts
    # from a current On-Premises deployment to the new Cloud-Based API. Business
    # Solution Providers (BSPs) must authenticate themselves with an access
    # token with the whatsapp_business_management permission.
    # @param [String] phone_number_id Required parameter: Example:
    # @param [RegisterPhoneRequest] body Required parameter: Example:
    # @return [SuccessResponse] response from the API call
    def register_phone(phone_number_id,
                       body)
      # Prepare query url.
      _query_builder = config.get_base_uri
      _query_builder << '/{Phone-Number-ID}/register'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'Phone-Number-ID' => { 'value' => phone_number_id, 'encode' => true }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'Content-Type' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      OAuth2.apply(config, _request)
      _response = execute_request(_request)
      validate_response(_response)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      SuccessResponse.from_hash(decoded)
    end

    # Used to deregister a phone number. Deregister phone removes a previously
    # registered phone. You can always re-register your phone using by repeating
    # the registration process. Business Solution Providers (BSPs) must
    # authenticate themselves with an access token with the
    # whatsapp_business_management permission.
    # @param [ContentTypeEnum] content_type Required parameter: Example:
    # @param [String] phone_number_id Required parameter: Example:
    # @return [SuccessResponse] response from the API call
    def deregister_phone(content_type,
                         phone_number_id)
      # Prepare query url.
      _query_builder = config.get_base_uri
      _query_builder << '/{Phone-Number-ID}/deregister'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'Phone-Number-ID' => { 'value' => phone_number_id, 'encode' => true }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'Content-Type' => content_type
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.post(
        _query_url,
        headers: _headers
      )
      OAuth2.apply(config, _request)
      _response = execute_request(_request)
      validate_response(_response)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      SuccessResponse.from_hash(decoded)
    end
  end
end
