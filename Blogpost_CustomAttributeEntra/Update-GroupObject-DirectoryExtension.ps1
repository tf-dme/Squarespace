Update-MgGroup -GroupId '5a13db6f-1786-4b3c-b88c-d8b148a99e9a' -Bodyparameter @{'extension_6981a79f4efc436db23207fa061f11a2_PIMEnabledGroup' = $false}

$Query = @{
    Method = "PATCH"
    Headers = @{
        Authorization = ("Bearer " + $JWT)
    }
    URI = "https://graph.microsoft.com/v1.0/groups/5a13db6f-1786-4b3c-b88c-d8b148a99e9a"
    ContentType = "application/json"
    Body = @{
        $extensionPropterty.name = $true
    } | ConvertTo-Json
}
Invoke-RestMethod @Query