module default {
    abstract type Person {
        required property name -> str;
        multi link places_visited -> Place;
    }

    type Vampire extending Person {
        property age -> int16;
    }

    scalar type HumanAge extending int16 {
        constraint max_value(120);
    }

    type PC extending Person {
        required property transport -> Transport;
    }

    type NPC extending Person {
        property age -> HumanAge
    }

    abstract type Place {
        required property name -> str;
        property modern_name -> str;
        property important_places -> array<str>;
    }

    type City extending Place;

    type Country extending Place;

    scalar type Transport extending enum<Feet, Train, HorseDrawnCarriage>;
}