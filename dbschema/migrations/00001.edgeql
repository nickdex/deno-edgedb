CREATE MIGRATION m1ha32h7uc3cvgwiwrzobjncafm4wrmpyje62xkt2razui4hntgyoa
    ONTO initial
{
  CREATE FUTURE nonrecursive_access_policies;
  CREATE TYPE default::City {
      CREATE PROPERTY modern_name -> std::str;
      CREATE REQUIRED PROPERTY name -> std::str;
  };
  CREATE TYPE default::Person {
      CREATE MULTI LINK places_visited -> default::City;
      CREATE REQUIRED PROPERTY name -> std::str;
  };
};
