# MSCClient::EventLocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location_name** | **String** | Location name : ActivityLocationName EME prop | [optional] |
| **latitude** | **String** | Latitude | [optional] |
| **longitude** | **String** | Longtitude | [optional] |
| **un_location_code** | **String** | Unlocation code | [optional] |
| **facility_code** | **String** | Facility code | [optional] |
| **facility_code_list_provider** | **String** | Facility Code List provider string | [optional] |
| **address** | **String** | Event Address | [optional] |

## Example

```ruby
require 'msc_client'

instance = MSCClient::EventLocation.new(
  location_name: null,
  latitude: null,
  longitude: null,
  un_location_code: null,
  facility_code: null,
  facility_code_list_provider: null,
  address: null
)
```

