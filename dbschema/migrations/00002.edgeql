CREATE MIGRATION m1hdafwzudil2l2pc5265h5jpsshq7yvpw42h5e6ghd4eas4zrlbtq
    ONTO m1ha32h7uc3cvgwiwrzobjncafm4wrmpyje62xkt2razui4hntgyoa
{
  CREATE ABSTRACT TYPE default::Place {
      CREATE PROPERTY important_places -> array<std::str>;
      CREATE PROPERTY modern_name -> std::str;
      CREATE REQUIRED PROPERTY name -> std::str;
  };
  ALTER TYPE default::City EXTENDING default::Place LAST;
  ALTER TYPE default::City {
      ALTER PROPERTY modern_name {
          DROP OWNED;
          RESET TYPE;
      };
  };
  ALTER TYPE default::City {
      ALTER PROPERTY name {
          RESET OPTIONALITY;
          DROP OWNED;
          RESET TYPE;
      };
  };
  CREATE TYPE default::Country EXTENDING default::Place;
  ALTER TYPE default::Person {
      SET ABSTRACT;
      ALTER LINK places_visited {
          SET TYPE default::Place;
      };
  };
  CREATE TYPE default::NPC EXTENDING default::Person;
  CREATE SCALAR TYPE default::Transport EXTENDING enum<Feet, Train, HorseDrawnCarriage>;
  CREATE TYPE default::PC EXTENDING default::Person {
      CREATE REQUIRED PROPERTY transport -> default::Transport;
  };
  CREATE TYPE default::Vampire EXTENDING default::Person {
      CREATE PROPERTY age -> std::int16;
  };
};
