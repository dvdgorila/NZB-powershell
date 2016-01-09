﻿# Functions for searching and downloading from NewzNab indexers (actually written for GeekSeek, but should work)

function Search-Newznab
    {
    [OutputType([array])]
    Param
        (
        # API URL of NewzNab
        [String]$NewzNab,

        # API key of NewzNab
        [String]$APIKey,
    
        #String to search for
        [Parameter(Mandatory=$True)]
        [string]$searchString
        )
    
    Write-Verbose "Searching $NewzNab for `"$searchString`""
    $NewzNabURL = $NewzNab+"api?t=search&apikey=$APIKey"
    $encodedSearchString = [System.Web.HttpUtility]::UrlEncode($searchString)

    $searchURL = $NewzNabURL+"&q=$($encodedSearchString)"
    $searchResults = Invoke-RestMethod $searchURL

    # Clean up the metadata and create a new array
    $cleanResults = @()
    foreach($searchResult in $searchResults)
        {
        $cleanObject = New-Object System.Object
        $cleanObject | Add-Member -type NoteProperty -name title -Value $searchResult.title      
        $cleanObject | Add-Member -type NoteProperty -name link -Value $searchResult.link       
        $cleanObject | Add-Member -type NoteProperty -name pubDate -Value $searchResult.pubDate  
        $cleanObject | Add-Member -type NoteProperty -name category -Value $searchResult.category 
        $cleanObject | Add-Member -type NoteProperty -name Description -Value $searchResult.description
        $cleanObject | Add-Member -type NoteProperty -name FriendlySize -Value ("{0:N2}" -f (($($searchResult).attr[2].value)/1Mb))
        $cleanResults += $cleanObject  
        }

    return $cleanResults
    }

