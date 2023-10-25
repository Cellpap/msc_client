# MSCClient::EventsApi

All URIs are relative to *https://ovhweportalapim.azure-api.net/dpo/trackandtrace/v2.2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_events**](EventsApi.md#get_events) | **GET** /events | Find events by Carrier BookingReference, Transport DocumentReference (Bill of lading) or Equipment Reference.The endpoint **requires** only 1 of the 3 query parameters to be used |


## get_events

> <Array<Event>> get_events(opts)

Find events by Carrier BookingReference, Transport DocumentReference (Bill of lading) or Equipment Reference.The endpoint **requires** only 1 of the 3 query parameters to be used

### Examples

```ruby
require 'time'
require 'msc_client'
# setup authorization
MSCClient.configure do |config|
  # Configure API key authorization: apiKeyQuery
  config.api_key['apiKeyQuery'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyQuery'] = 'Bearer'

  # Configure API key authorization: apiKeyHeader
  config.api_key['apiKeyHeader'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyHeader'] = 'Bearer'
end

api_instance = MSCClient::EventsApi.new
opts = {
  carrier_booking_reference: 'carrier_booking_reference_example', # String | A set of unique characters provided by carrier to identify a booking.  Specifying this filter will only return events related to this particular carrierBookingReference
  transport_document_reference: 'transport_document_reference_example', # String | A unique number reference allocated by the shipping line to the transport document and   the main number used for the tracking of the status of the shipment.  Specifying this filter will only return events related to this particular transportDocumentReference
  equipment_reference: 'equipment_reference_example' # String | Will filter by the unique identifier for the equipment, which should follow the BIC ISO Container Identification Number where possible.  Specifying this filter will only return events related to this particular equipmentReference
}

begin
  # Find events by Carrier BookingReference, Transport DocumentReference (Bill of lading) or Equipment Reference.The endpoint **requires** only 1 of the 3 query parameters to be used
  result = api_instance.get_events(opts)
  p result
rescue MSCClient::ApiError => e
  puts "Error when calling EventsApi->get_events: #{e}"
end
```

#### Using the get_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Event>>, Integer, Hash)> get_events_with_http_info(opts)

```ruby
begin
  # Find events by Carrier BookingReference, Transport DocumentReference (Bill of lading) or Equipment Reference.The endpoint **requires** only 1 of the 3 query parameters to be used
  data, status_code, headers = api_instance.get_events_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Event>>
rescue MSCClient::ApiError => e
  puts "Error when calling EventsApi->get_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **carrier_booking_reference** | **String** | A set of unique characters provided by carrier to identify a booking.  Specifying this filter will only return events related to this particular carrierBookingReference | [optional] |
| **transport_document_reference** | **String** | A unique number reference allocated by the shipping line to the transport document and   the main number used for the tracking of the status of the shipment.  Specifying this filter will only return events related to this particular transportDocumentReference | [optional] |
| **equipment_reference** | **String** | Will filter by the unique identifier for the equipment, which should follow the BIC ISO Container Identification Number where possible.  Specifying this filter will only return events related to this particular equipmentReference | [optional] |

### Return type

[**Array&lt;Event&gt;**](Event.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

