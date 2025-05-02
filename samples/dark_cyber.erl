% In a land shrouded in mystery...

-module(dark_cyber).
-export([duration/0]).

duration() ->
    CyberName = "Dark Cyber",
    ConstructionYear = 1100,
    DestructionYear = 1678,
    Duration = DestructionYear - ConstructionYear,
    io:format("The duration of ~s was ~p years.~n", [CyberName, Duration]).

% ...there stood a Dark Cyber
