# MSCClient::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **http_method** | **String** | Gets or sets the HTTP method | [optional] |
| **request_uri** | **String** | Gets or sets the request URI | [optional] |
| **errors** | [**Array&lt;Errors&gt;**](Errors.md) | Gets or sets the errors | [optional] |
| **status_code** | **Integer** | Gets or sets the status code | [optional] |
| **status_code_text** | **String** | Gets or sets the status code text | [optional] |
| **error_date_time** | **Time** | Gets or sets the error date time | [optional] |

## Example

```ruby
require 'msc_client'

instance = MSCClient::Error.new(
  http_method: null,
  request_uri: null,
  errors: null,
  status_code: null,
  status_code_text: null,
  error_date_time: null
)
```

