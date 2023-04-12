#define ENCRY_ARGS_PTY(mon) (u16 *)&(mon)->party, sizeof((mon)->party), (mon)->box.pid
#define DECRYPT_PTY(mon) MonDecryptSegment(ENCRY_ARGS_PTY(mon))
#define ENCRYPT_PTY(mon) MonEncryptSegment(ENCRY_ARGS_PTY(mon))
#include "modify_pokemon.h"
#include "constants/map_sections.h"
#include "constants/species.h"
#include "constants/abilities.h"
#include "constants/moves.h"
#include "constants/items.h"
#include "constants/pokemon.h"

struct Mapping {
    u16 map;
    u16 species;
    u8 ability;
    u16 moves[4];
    u16 item;
    u8 nature;
};

static const struct Mapping MAPPINGS[] = {
    {MAPSEC_ROUTE_29, SPECIES_RATTATA, ABILITY_DROUGHT, MOVE_SPLASH, 0, 0, 0, ITEM_TOXIC_ORB, NATURE_LONELY},
    {MAPSEC_ROUTE_29, SPECIES_SPINARAK, ABILITY_DROUGHT, MOVE_SPLASH, 0, 0, 0, ITEM_TOXIC_ORB, NATURE_LONELY},
    {MAPSEC_ROUTE_29, SPECIES_HOOTHOOT, ABILITY_DROUGHT, MOVE_SPLASH, 0, 0, 0, ITEM_TOXIC_ORB, NATURE_LONELY},
    {MAPSEC_ROUTE_29, SPECIES_PIDGEY, ABILITY_DROUGHT, MOVE_SPLASH, 0, 0, 0, ITEM_TOXIC_ORB, NATURE_LONELY},
    {MAPSEC_ROUTE_30, SPECIES_RATTATA, ABILITY_DRIZZLE, MOVE_SUBSTITUTE, 0, 0, 0, ITEM_FLAME_ORB, NATURE_BRAVE},
    {MAPSEC_ROUTE_30, SPECIES_SPINARAK, ABILITY_DRIZZLE, MOVE_SUBSTITUTE, 0, 0, 0, ITEM_FLAME_ORB, NATURE_BRAVE},
    {MAPSEC_ROUTE_30, SPECIES_HOOTHOOT, ABILITY_DRIZZLE, MOVE_SUBSTITUTE, 0, 0, 0, ITEM_FLAME_ORB, NATURE_BRAVE},
    {MAPSEC_ROUTE_30, SPECIES_PIDGEY, ABILITY_DRIZZLE, MOVE_SUBSTITUTE, 0, 0, 0, ITEM_FLAME_ORB, NATURE_BRAVE},
};

BOOL modify_pokemon(BOXMON * boxPokemon, int species) {
    u16 location = MapHeader_GetMapSec(get_current_location());
    for (int i = 0; i < NELEMS(MAPPINGS); i++) {
        const struct Mapping *mapping = &MAPPINGS[i];
        if (mapping->map == location && mapping->species == species) {
            u32 pid = LCRandom() | (LCRandom() << 16);
            pid = (pid / 25) * 25 + mapping->nature;
            // Overflow, just assign PID to be equal to nature
            if (mapping->nature > pid) {
                pid = mapping->nature;
            }
            SetBoxMonData(boxPokemon, MON_DATA_PERSONALITY, &pid);
            SetBoxMonData(boxPokemon, MON_DATA_ABILITY, &mapping->ability);
            SetBoxMonData(boxPokemon, MON_DATA_HELD_ITEM, &mapping->item);
            for (int j = 0; j < 4; j++) {
                if (mapping->moves[j]) {
                    BoxMonSetMoveInSlot(boxPokemon, mapping->moves[j], j);
                }
            }
            return TRUE;
        }
    }
    return FALSE;
}