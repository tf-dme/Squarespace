$Query = @{
    Method = "GET"
    Headers = @{
        Authorization = ("Bearer " + $JWT)
    }
    URI = "https://graph.microsoft.com/v1.0/schemaExtensions/thinformatics_CustomAttributes1"
    ContentType = "application/json"
}
Invoke-RestMethod @Query