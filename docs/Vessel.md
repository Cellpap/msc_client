# MSCClient::Vessel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vessel_imo_number** | **String** | The unique reference for a registered Vessel from IMO |  |
| **vessel_name** | **String** |  | [optional] |
| **vessel_flag** | **String** | ISO 3166 two-letter country code | [optional] |
| **vessel_call_sign_number** | **String** | A unique alphanumeric identity that belongs to the vessel and is assigned by ITU | [optional] |
| **vessel_operator_carrier_code** | **String** | SCAC code, the NMFTA identifier for the Carrier (\&quot;MEDU\&quot; is MSC) or SMDG code | [optional] |
| **vessel_operator_carrier_code_list** | **String** | List of Values: NMFTA, SMDG | [optional] |

## Example

```ruby
require 'msc_client'

instance = MSCClient::Vessel.new(
  vessel_imo_number: ,
  vessel_name: ,
  vessel_flag: ,
  vessel_call_sign_number: ,
  vessel_operator_carrier_code: ,
  vessel_operator_carrier_code_list: 
)
```

