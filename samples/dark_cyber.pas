{ In a land shrouded in mystery... }

program DarkCyber;

var
  CyberName: string;
  ConstructionYear, DestructionYear, Duration: integer;

begin
  CyberName := 'Dark Cyber';
  ConstructionYear := 1100;
  DestructionYear := 1678;
  Duration := DestructionYear - ConstructionYear;
  writeln('The duration of ', CyberName, ' was ', Duration, ' years.');
end.

{ ...there stood a Dark Cyber }
