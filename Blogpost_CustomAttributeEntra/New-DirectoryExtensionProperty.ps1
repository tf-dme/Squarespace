$Query = @{
    Method = "POST"
    Headers = @{
        Authorization = ("Bearer " + $JWT)
    }
    URI = "https://graph.microsoft.com/v1.0/applications(appId='$appID')/extensionProperties"
    ContentType = "application/json"
    Body = @{
        name = 'PIMEnabledGroup'
        dataType = 'boolean'
        targetObjects = @(
            'Group'
        )
    } | ConvertTo-Json
}
$extensionPropterty = Invoke-RestMethod @Query