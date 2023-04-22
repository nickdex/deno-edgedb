CREATE MIGRATION m1rbnykof77nyrztokblruvejsdkl4x2cqk67vgav27ce2vxunnfea
    ONTO m1hdafwzudil2l2pc5265h5jpsshq7yvpw42h5e6ghd4eas4zrlbtq
{
  CREATE SCALAR TYPE default::HumanAge EXTENDING std::int16 {
      CREATE CONSTRAINT std::max_value(120);
  };
  ALTER TYPE default::NPC {
      CREATE PROPERTY age -> default::HumanAge;
  };
};
