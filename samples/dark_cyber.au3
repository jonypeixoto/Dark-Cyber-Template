; In a land shrouded in mystery...

Global $CyberName = "Dark Cyber"
Global $ConstructionYear = 1100
Global $DestructionYear = 1678

Func CalcDuration()
    Return $DestructionYear - $ConstructionYear
EndFunc

ConsoleWrite("The duration of " & $CyberName & " was " & CalcDuration() & " years." & @CRLF)

; ...there stood a Dark Cyber
