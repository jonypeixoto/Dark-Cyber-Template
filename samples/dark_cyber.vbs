' In a land shrouded in mystery...

Dim cyberName, constructionYear, destructionYear, duration
cyberName = "Dark Cyber"
constructionYear = 1100
destructionYear = 1678

Function CalcDuration(constructionYear, destructionYear)
    CalcDuration = destructionYear - constructionYear
End Function

duration = CalcDuration(constructionYear, destructionYear)
WScript.Echo "The duration of " & cyberName & " was " & duration & " years."

' ...there stood a Dark Castle
