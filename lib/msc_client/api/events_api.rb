=begin
#DPO-DCSATrackAndTrace-API-V2

#Provides equipment actual milestones along with Estimated Time of Arrival following DCSA standards

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module MSCClient
  class EventsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Find events by Carrier BookingReference, Transport DocumentReference (Bill of lading) or Equipment Reference.The endpoint **requires** only 1 of the 3 query parameters to be used
    # @param [Hash] opts the optional parameters
    # @option opts [String] :carrier_booking_reference A set of unique characters provided by carrier to identify a booking.  Specifying this filter will only return events related to this particular carrierBookingReference
    # @option opts [String] :transport_document_reference A unique number reference allocated by the shipping line to the transport document and   the main number used for the tracking of the status of the shipment.  Specifying this filter will only return events related to this particular transportDocumentReference
    # @option opts [String] :equipment_reference Will filter by the unique identifier for the equipment, which should follow the BIC ISO Container Identification Number where possible.  Specifying this filter will only return events related to this particular equipmentReference
    # @return [Array<Event>]
    def get_events(opts = {})
      data, _status_code, _headers = get_events_with_http_info(opts)
      data
    end

    # Find events by Carrier BookingReference, Transport DocumentReference (Bill of lading) or Equipment Reference.The endpoint **requires** only 1 of the 3 query parameters to be used
    # @param [Hash] opts the optional parameters
    # @option opts [String] :carrier_booking_reference A set of unique characters provided by carrier to identify a booking.  Specifying this filter will only return events related to this particular carrierBookingReference
    # @option opts [String] :transport_document_reference A unique number reference allocated by the shipping line to the transport document and   the main number used for the tracking of the status of the shipment.  Specifying this filter will only return events related to this particular transportDocumentReference
    # @option opts [String] :equipment_reference Will filter by the unique identifier for the equipment, which should follow the BIC ISO Container Identification Number where possible.  Specifying this filter will only return events related to this particular equipmentReference
    # @return [Array<(Array<Event>, Integer, Hash)>] Array<Event> data, response status code and response headers
    def get_events_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.get_events ...'
      end
      # resource path
      local_var_path = '/events'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'carrierBookingReference'] = opts[:'carrier_booking_reference'] if !opts[:'carrier_booking_reference'].nil?
      query_params[:'transportDocumentReference'] = opts[:'transport_document_reference'] if !opts[:'transport_document_reference'].nil?
      query_params[:'equipmentReference'] = opts[:'equipment_reference'] if !opts[:'equipment_reference'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Event>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"EventsApi.get_events",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#get_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
