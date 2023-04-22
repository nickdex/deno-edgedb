
INSERT City {
  name := 'Munich',
};

INSERT City {
  name := 'Buda-Pesth',
  modern_name := 'Budapest'
};

INSERT City {
  name := 'Bistritz',
  modern_name := 'Bistrița',
  important_places := ['Golden Krone Hotel'],
};

INSERT NPC {
  name := 'Jonathan Harker',
  places_visited := City,
};

INSERT PC {
  name := 'Emil Sinclair',
  places_visited := City,
  transport := Transport.HorseDrawnCarriage,
};

INSERT Country {
  name := 'Hungary'
};

INSERT Country {
  name := 'Romania'
};

INSERT Vampire {
  name := 'Count Dracula',
  places_visited := (SELECT Place FILTER .name = 'Romania'),
};

INSERT NPC {
  name := 'The innkeeper',
  age := 30,
};