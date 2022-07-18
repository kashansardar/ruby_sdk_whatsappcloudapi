# whats_app_cloud_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WhatsAppCloudApi
  # PhoneNumbersController
  class PhoneNumbersController < BaseController
    def initialize(config, http_call_back: nil)
      super(config, http_call_back: http_call_back)
    end

    # When you query all the phone numbers for a WhatsApp Business Account, each
    # phone number has an id. You can directly query for a phone number using
    # this id.
    # @param [String] phone_number_id Required parameter: Example:
    # @return [GetPhoneNumberByIDResponse] response from the API call
    def get_phone_number_by_id(phone_number_id)
      # Prepare query url.
      _query_builder = config.get_base_uri
      _query_builder << '/{Phone-Number-ID}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'Phone-Number-ID' => { 'value' => phone_number_id, 'encode' => true }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.get(
        _query_url,
        headers: _headers
      )
      OAuth2.apply(config, _request)
      _response = execute_request(_request)
      validate_response(_response)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      GetPhoneNumberByIDResponse.from_hash(decoded)
    end

    # Used to request a code to verify a phone number's ownership. You need to
    # verify the phone number you want to use to send messages to your
    # customers. Phone numbers must be verified through SMS/voice call. The
    # verification process can be done through the Graph API calls specified
    # below.
    # @param [String] phone_number_id Required parameter: Example:
    # @param [RequestVerificationCodeMethodEnum] code_method Required parameter:
    # Chosen method for verification.
    # @param [String] locale Required parameter: Your locale. For example:
    # "en_US".
    # @return [SuccessResponse] response from the API call
    def request_verification_code(phone_number_id,
                                  code_method,
                                  locale)
      # Prepare query url.
      _query_builder = config.get_base_uri
      _query_builder << '/{Phone-Number-ID}/request_code'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'Phone-Number-ID' => { 'value' => phone_number_id, 'encode' => true }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'code_method' => code_method,
        'locale' => locale
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = config.http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      OAuth2.apply(config, _request)
      _response = execute_request(_request)
      validate_response(_response)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      SuccessResponse.from_hash(decoded)
    end

    # Used to verify a phone number's ownership. After you have received a SMS
    # or Voice request code for verification, you need to verify the code that
    # was sent to you.
    # @param [String] phone_number_id Required parameter: Example:
    # @param [String] code Required parameter: The code you received after
    # calling FROM_PHONE_NUMBER_ID/request_code.
    # @return [SuccessResponse] response from the API call
    def verify_code(phone_number_id,
                    code)
      # Prepare query url.
      _query_builder = config.get_base_uri
      _query_builder << '/{Phone-Number-ID}/verify_code'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'Phone-Number-ID' => { 'value' => phone_number_id, 'encode' => true }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'code' => code
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = config.http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
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
