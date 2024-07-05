# Nutzung des Powershell Module Microsoft.Graph.Groups
Get-MgGroup -Filter "thinformatics_CustomAttribute/PIMEnabledGroup eq True"

# Direkte Nutzung der REST API
$Query = @{
    Method = "GET"
    Headers = @{
        Authorization = ("Bearer " + $JWT)
    }
    URI = "https://graph.microsoft.com/v1.0/groups?filter=thinformatics_CustomAttribute/PIMEnabledGroup eq True"
    ContentType = "application/json"
}
(Invoke-RestMethod @Query).value | ft