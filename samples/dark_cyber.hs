-- In a land shrouded in mystery...

cyberName = "Dark Cyber"
constructionYear = 1100
destructionYear = 1678

calcDuration :: Int
calcDuration = destructionYear - constructionYear

main :: IO ()
main = putStrLn $ "The duration of " ++ cyberName ++ " was " ++ show calcDuration ++ " years."

-- ...there stood a Dark Cyber
