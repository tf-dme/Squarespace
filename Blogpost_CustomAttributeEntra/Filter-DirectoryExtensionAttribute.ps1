# Nutzung der MG Powershell Module
Get-MgGroup -Filter "extension_6981a79f4efc436db23207fa061f11a2_PIMEnabledGroup eq true"

# Direkte Nutzung der REST API
$Query = @{
    Method = "GET"
    Headers = @{
        Authorization = ("Bearer " + $JWT)
    }
    URI = "https://graph.microsoft.com/v1.0/groups?`$filter=extension_6981a79f4efc436db23207fa061f11a2_PIMEnabledGroup eq true"
    ContentType = "application/json"
}
(Invoke-RestMethod @Query).value | ft


# Filterung, welche Gruppen nicht PIMEnabledGroup auf true haben
$Query = @{
    Method = "GET"
    Headers = @{
        Authorization = ("Bearer " + $JWT)
        ConsistencyLevel = 'eventual'
    }
    URI = "https://graph.microsoft.com/v1.0/groups?`$filter=extension_6981a79f4efc436db23207fa061f11a2_PIMEnabledGroup ne true&`$count=true"
    ContentType = "application/json"
}
(Invoke-RestMethod @Query).value | ft