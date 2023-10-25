# MSCClient::TransportCall

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transport_call_id** | **String** | The unique identifier for a transport call (PK) |  |
| **carrier_service_code** | **String** | The code of the service for which the schedule details are published.  The vessel operator-specific identifier of the Voyage.  In case there are multiple voyages the export voyage is chosen | [optional] |
| **export_voyage_number** | **String** | The vessel operator-specific identifier of the export Voyage | [optional] |
| **import_voyage_number** | **String** | The vessel operator-specific identifier of the import Voyage | [optional] |
| **un_location_code** | **String** | Transport operator&#39;s key that uniquely identifies each individual call.   This key is essential to distinguish between two separate calls at the same location within one voyage | [optional] |
| **facility_code** | **String** | The code used for identifying the specific facility | [optional] |
| **facility_code_list_provider** | **String** | The provider used for identifying the facility Code. List of Values: SMDG, BIC | [optional] |
| **facility_type_code** | **String** | The code to identify the specific type of facility | [optional] |
| **other_facility** | **String** | An alternative way to capture the facility when no standardized DCSA facility code can be found | [optional] |
| **mode_of_transport** | **String** | A code specifying a type of transport mode |  |
| **vessel** | [**Vessel**](Vessel.md) |  | [optional] |

## Example

```ruby
require 'msc_client'

instance = MSCClient::TransportCall.new(
  transport_call_id: ,
  carrier_service_code: ,
  export_voyage_number: ,
  import_voyage_number: ,
  un_location_code: ,
  facility_code: AEAUHADT,
  facility_code_list_provider: ,
  facility_type_code: ,
  other_facility: Depot location or address,
  mode_of_transport: ,
  vessel: null
)
```

