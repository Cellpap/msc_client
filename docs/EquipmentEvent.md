# MSCClient::EquipmentEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_type** | **String** | The Event Type of the object |  |
| **description** | **String** | The event entity is described as a generalization of all the specific event categories.   An event always takes place in relation to a shipment and can additionally be linked to a transport or an equipment | [optional] |
| **event_id** | **String** | The unique identifier for the Equipment Event ID/Transport Event ID/Shipment Event ID |  |
| **event_date_time** | **Time** | The local date and time, where the event took place, in ISO 8601 format.  By default, it will be already serialized using the expected format: \&quot;2019-11-12T07:41:00+08:30\&quot;   https://app.swaggerhub.com/apis/dcsaorg/DCSA_TNT/2.2.0#/eventDateTime |  |
| **event_classifier_code** | **String** | Code for the event classifier can be  &lt;br&gt;ACT (Actual)&lt;/br&gt;&lt;br&gt;EST(Estimated)&lt;/br&gt;&lt;br&gt;Enum:&lt;br&gt;[ ACT (Actual), EST (Estimate) ]&lt;/br&gt; |  |
| **event_created_date_time** | **Time** | The local date and time, where the event took place, in ISO 8601 format.  By default, it will be already serialized using the expected format: \&quot;2019-11-12T07:41:00+08:30\&quot;   https://app.swaggerhub.com/apis/dcsaorg/DCSA_TNT/2.2.0#/eventDateTime |  |
| **equipment_event_type_code** | **String** | Unique identifier for Event Type Code for Equipment | [optional] |
| **equipment_reference** | **String** | The unique identifier for the equipment, which should follow the BIC ISO Container Identification Number where possible.  If a container is not yet assigned to a shipment, the interface cannot return any information when an equipment reference is given as input.  If a container is assigned to an (active) shipment, the interface returns information on the active shipment | [optional] |
| **iso_equipment_code** | **String** |  | [optional] |
| **empty_indicator_code** | **String** | Code to denote whether the equipment is empty or laden | [optional] |
| **transport_call** | [**TransportCall**](TransportCall.md) |  | [optional] |
| **document_references** | [**Array&lt;DocumentReference&gt;**](DocumentReference.md) | DocumentReferences | [optional] |
| **event_location** | [**EventLocation**](EventLocation.md) |  | [optional] |

## Example

```ruby
require 'msc_client'

instance = MSCClient::EquipmentEvent.new(
  event_type: SHIPMENT,
  description: null,
  event_id: 1,
  event_date_time: 2019-11-11T23:11Z,
  event_classifier_code: EST,
  event_created_date_time: 2019-11-11T23:11Z,
  equipment_event_type_code: ,
  equipment_reference: APZU4812090,
  iso_equipment_code: ,
  empty_indicator_code: Empty,
  transport_call: null,
  document_references: null,
  event_location: null
)
```

