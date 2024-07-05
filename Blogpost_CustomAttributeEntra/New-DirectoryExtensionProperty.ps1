$Query = @{
    Method = "POST"
    Headers = @{
        Authorization = ("Bearer " + $JWT)
    }
    URI = "https://graph.microsoft.com/v1.0/applications(appId='6981a79f-4efc-436d-b232-07fa061f11a2')/extensionProperties"
    ContentType = "application/json"
    Body = @{
        name = 'PIMEnabledGroup'
        dataType = 'boolean'
        targetObjects = @(
            'Group'
        )
    } | ConvertTo-Json
}
Invoke-RestMethod @Query