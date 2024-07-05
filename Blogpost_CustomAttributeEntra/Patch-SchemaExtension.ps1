$Query = @{
    Method = "PATCH"
    Headers = @{
        Authorization = ("Bearer " + $JWT)
    }
    URI = "https://graph.microsoft.com/v1.0/schemaExtensions/thinformatics_CustomAttributes1"
    ContentType = "application/json"
    Body = @{
        status = "Available"
        properties = @(
            @{
                name = 'PIMEnabledGroup'
                type = 'Boolean'
            }
            @{
                name = 'PIMStatus'
                type = 'String'
            }
            @{
                name = 'Kostenstelle'
                type = 'Integer'
            }
        )
    } | ConvertTo-Json
}
Invoke-RestMethod @Query