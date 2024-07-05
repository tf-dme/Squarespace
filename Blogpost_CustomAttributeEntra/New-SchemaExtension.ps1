$Query = @{
    Method = "POST"
    Headers = @{
        Authorization = ("Bearer " + $JWT)
    }
    URI = "https://graph.microsoft.com/v1.0/schemaExtensions"
    ContentType = "application/json"
    Body = @{
        id = 'thinformatics_CustomAttributes1'
        description = 'Custom Attribute für das Entra ID'
        targetTypes = @(
            'Group'
        )
        properties = @(
            @{
                name = 'PIMEnabledGroup'
                type = 'Boolean'
            }
        )
    } | ConvertTo-Json
}
Invoke-RestMethod @Query