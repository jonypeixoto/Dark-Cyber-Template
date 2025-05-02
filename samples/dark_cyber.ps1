# In a land shrouded in mystery...

$CyberName = "Dark Cyber"
$ConstructionYear = 1100
$DestructionYear = 1678

function Calc-Duration {
    param ($DestructionYear, $ConstructionYear)
    return $DestructionYear - $ConstructionYear
}

$Duration = Calc-Duration -DestructionYear $DestructionYear -ConstructionYear $ConstructionYear
Write-Output "The duration of $CyberName was $Duration years."

# ...there stood a Dark Cyber
