#include "battle_setup.h"
#include "trainer_data.h"
#include "msgdata.h"
#include "save_misc_data.h"
#include "math_util.h"
#include "pokemon.h"
#include "party.h"
#include "constants/trainer_class.h"
#include "constants/moves.h"
#include "msgdata/msg.naix"

void CreateNPCTrainerParty(BATTLE_SETUP *battleSetup, int trainer_idx, HeapID heap_id);

void EnemyTrainerSet_Init(BATTLE_SETUP *battleSetup, SAVEDATA *saveData, HeapID heap_id) {
    TRAINER trainer;
    MSGDATA *msgData;
    const u16 *rivalName;
    int i;
    STRING *string;

    msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, NARC_msgdata_msg, NARC_msg_msg_0729_bin, heap_id);
    rivalName = Sav2_Misc_RivalName_const_get(Sav2_Misc_const_get(saveData));
    for (i = 0; i < 4; i++) {
        if (battleSetup->trainerId[i] != 0) {
            TrainerData_ReadTrData(battleSetup->trainerId[i], &trainer);
            battleSetup->trainer[i] = trainer;
            if (trainer.trainerClass == TRAINERCLASS_RIVAL) {
                CopyU16StringArray(battleSetup->trainer[i].name, rivalName);
            } else {
                string = NewString_ReadMsgData(msgData, battleSetup->trainerId[i]);
                CopyStringToU16Array(string, battleSetup->trainer[i].name, OT_NAME_LENGTH + 1);
                String_dtor(string);
            }
            CreateNPCTrainerParty(battleSetup, i, heap_id);
        }
    }
    battleSetup->flags |= trainer.doubleBattle;
    DestroyMsgData(msgData);
}

int TrainerData_GetAttr(u32 tr_idx, TrainerAttr attr_no) {
    TRAINER trainer;
    int result;
    TrainerData_ReadTrData(tr_idx, &trainer);
    switch (attr_no) {
    case TRATTR_TYPE:
        result = trainer.trainerType;
        break;
    case TRATTR_CLASS:
        result = trainer.trainerClass;
        break;
    case TRATTR_UNK2:
        result = trainer.unk_2;
        break;
    case TRATTR_NPOKE:
        result = trainer.npoke;
        break;
    case TRATTR_ITEM1:
    case TRATTR_ITEM2:
    case TRATTR_ITEM3:
    case TRATTR_ITEM4:
        result = trainer.items[attr_no - TRATTR_ITEM1];
        break;
    case TRATTR_AIFLAGS:
        result = trainer.ai_flags;
        break;
    case TRATTR_DOUBLEBTL:
        result = trainer.doubleBattle;
        break;
    }
    return result;
}

BOOL TrainerMessageWithIdPairExists(u32 trainer_idx, u32 msg_id, HeapID heap_id) {
    u16 rdbuf[3];
    struct NARC * trTblNarc;
    BOOL ret = FALSE;
    u32 trTblSize;

    trTblSize = GetNarcMemberSizeByIdPair(NARC_poketool_trmsg_trtbl, 0);
    ReadFromNarcMemberByIdPair(&rdbuf[0], NARC_poketool_trmsg_trtblofs, 0, trainer_idx * 2, 2);
    trTblNarc = NARC_ctor(NARC_poketool_trmsg_trtbl, heap_id);
    while (rdbuf[0] != trTblSize) {
        NARC_ReadFromMember(trTblNarc, 0, rdbuf[0], 4, &rdbuf[1]);
        if (rdbuf[1] == trainer_idx && rdbuf[2] == msg_id) {
            ret = TRUE;
            break;
        }
        if (rdbuf[1] != trainer_idx)
            break;
        rdbuf[0] += 4;
    }
    NARC_dtor(trTblNarc);
    return ret;
}

void GetTrainerMessageByIdPair(u32 trainer_idx, u32 msg_id, STRING * str, HeapID heap_id) {
    u16 rdbuf[3];
    u32 trTblSize;
    NARC * trTblNarc;

    trTblSize = GetNarcMemberSizeByIdPair(NARC_poketool_trmsg_trtbl, 0);
    ReadFromNarcMemberByIdPair(&rdbuf[0], NARC_poketool_trmsg_trtblofs, 0, trainer_idx * 2, 2);
    trTblNarc = NARC_ctor(NARC_poketool_trmsg_trtbl, heap_id);
    while (rdbuf[0] != trTblSize) {
        NARC_ReadFromMember(trTblNarc, 0, rdbuf[0], 4, &rdbuf[1]);
        if (rdbuf[1] == trainer_idx && rdbuf[2] == msg_id) {
            ReadMsgData_NewNarc_ExistingString(NARC_msgdata_msg, NARC_msg_msg_0728_bin, (u32)(rdbuf[0] / 4), heap_id, str);
            break;
        }
        rdbuf[0] += 4;
    }
    NARC_dtor(trTblNarc);
    if (rdbuf[0] == trTblSize) {
        StringSetEmpty(str);
    }
}

void TrainerData_ReadTrData(u32 idx, TRAINER * dest) {
    ReadWholeNarcMemberByIdPair(dest, NARC_poketool_trainer_trdata, (s32)idx);
}

void TrainerData_ReadTrPoke(u32 idx, TRPOKE * dest) {
    ReadWholeNarcMemberByIdPair(dest, NARC_poketool_trainer_trpoke, (s32)idx);
}

static const u8 sTrainerGenders[] = {
    TRAINER_MALE,   // TRAINERCLASS_PKMN_TRAINER_ETHAN
    TRAINER_FEMALE, // TRAINERCLASS_PKMN_TRAINER_LYRA
    TRAINER_MALE,   // TRAINERCLASS_YOUNGSTER
    TRAINER_FEMALE, // TRAINERCLASS_LASS
    TRAINER_MALE,   // TRAINERCLASS_CAMPER
    TRAINER_FEMALE, // TRAINERCLASS_PICNICKER
    TRAINER_MALE,   // TRAINERCLASS_BUG_CATCHER
    TRAINER_FEMALE, // TRAINERCLASS_AROMA_LADY
    TRAINER_FEMALE, // TRAINERCLASS_TWINS
    TRAINER_MALE,   // TRAINERCLASS_HIKER
    TRAINER_FEMALE, // TRAINERCLASS_BATTLE_GIRL
    TRAINER_MALE,   // TRAINERCLASS_FISHERMAN
    TRAINER_MALE,   // TRAINERCLASS_CYCLIST_M
    TRAINER_FEMALE, // TRAINERCLASS_CYCLIST_F
    TRAINER_MALE,   // TRAINERCLASS_BLACK_BELT
    TRAINER_MALE,   // TRAINERCLASS_ARTIST
    TRAINER_MALE,   // TRAINERCLASS_PKMN_BREEDER_M
    TRAINER_FEMALE, // TRAINERCLASS_PKMN_BREEDER_F
    TRAINER_FEMALE, // TRAINERCLASS_COWGIRL
    TRAINER_MALE,   // TRAINERCLASS_JOGGER
    TRAINER_MALE,   // TRAINERCLASS_POKEFAN_M
    TRAINER_FEMALE, // TRAINERCLASS_POKEFAN
    TRAINER_FEMALE, // TRAINERCLASS_POKE_KID
    TRAINER_MALE,   // TRAINERCLASS_RIVAL
    TRAINER_MALE,   // TRAINERCLASS_ACE_TRAINER_M
    TRAINER_FEMALE, // TRAINERCLASS_ACE_TRAINER_F
    TRAINER_FEMALE, // TRAINERCLASS_WAITRESS
    TRAINER_MALE,   // TRAINERCLASS_VETERAN
    TRAINER_MALE,   // TRAINERCLASS_NINJA_BOY
    TRAINER_MALE,   // TRAINERCLASS_DRAGON_TAMER
    TRAINER_FEMALE, // TRAINERCLASS_BIRD_KEEPER
    TRAINER_MALE,   // TRAINERCLASS_JUGGLER
    TRAINER_MALE,   // TRAINERCLASS_RICH_BOY
    TRAINER_FEMALE, // TRAINERCLASS_LADY
    TRAINER_MALE,   // TRAINERCLASS_GENTLEMAN
    TRAINER_FEMALE, // TRAINERCLASS_SOCIALITE
    TRAINER_FEMALE, // TRAINERCLASS_BEAUTY
    TRAINER_MALE,   // TRAINERCLASS_COLLECTOR
    TRAINER_MALE,   // TRAINERCLASS_POLICEMAN
    TRAINER_MALE,   // TRAINERCLASS_PKMN_RANGER_M
    TRAINER_FEMALE, // TRAINERCLASS_PKMN_RANGER_F
    TRAINER_MALE,   // TRAINERCLASS_SCIENTIST
    TRAINER_MALE,   // TRAINERCLASS_SWIMMER_M
    TRAINER_FEMALE, // TRAINERCLASS_SWIMMER_F
    TRAINER_MALE,   // TRAINERCLASS_TUBER_M
    TRAINER_FEMALE, // TRAINERCLASS_TUBER_F
    TRAINER_MALE,   // TRAINERCLASS_SAILOR
    TRAINER_FEMALE, // TRAINERCLASS_KIMONO_GIRL
    TRAINER_MALE,   // TRAINERCLASS_RUIN_MANIAC
    TRAINER_MALE,   // TRAINERCLASS_PSYCHIC_M
    TRAINER_FEMALE, // TRAINERCLASS_PSYCHIC_F
    TRAINER_MALE,   // TRAINERCLASS_PI
    TRAINER_MALE,   // TRAINERCLASS_GUITARIST
    TRAINER_MALE,   // TRAINERCLASS_ACE_TRAINER_M_GS
    TRAINER_FEMALE, // TRAINERCLASS_ACE_TRAINER_F_GS
    TRAINER_MALE,   // TRAINERCLASS_TEAM_ROCKET
    TRAINER_FEMALE, // TRAINERCLASS_SKIER
    TRAINER_MALE,   // TRAINERCLASS_ROUGHNECK
    TRAINER_MALE,   // TRAINERCLASS_CLOWN
    TRAINER_MALE,   // TRAINERCLASS_WORKER
    TRAINER_MALE,   // TRAINERCLASS_SCHOOL_KID_M
    TRAINER_FEMALE, // TRAINERCLASS_SCHOOL_KID_F
    TRAINER_FEMALE, // TRAINERCLASS_TEAM_ROCKET_F
    TRAINER_MALE,   // TRAINERCLASS_BURGLAR
    TRAINER_MALE,   // TRAINERCLASS_FIREBREATHER
    TRAINER_MALE,   // TRAINERCLASS_BIKER
    TRAINER_MALE,   // TRAINERCLASS_LEADER_FALKNER
    TRAINER_FEMALE, // TRAINERCLASS_LEADER_BUGSY
    TRAINER_MALE,   // TRAINERCLASS_POKE_MANIAC
    TRAINER_MALE,   // TRAINERCLASS_BIRD_KEEPER_GS
    TRAINER_FEMALE, // TRAINERCLASS_LEADER_WHITNEY
    TRAINER_MALE,   // TRAINERCLASS_RANCHER
    TRAINER_MALE,   // TRAINERCLASS_LEADER_MORTY
    TRAINER_MALE,   // TRAINERCLASS_LEADER_PRYCE
    TRAINER_FEMALE, // TRAINERCLASS_LEADER_JASMINE
    TRAINER_MALE,   // TRAINERCLASS_LEADER_CHUCK
    TRAINER_FEMALE, // TRAINERCLASS_LEADER_CLAIR
    TRAINER_FEMALE, // TRAINERCLASS_TEACHER
    TRAINER_MALE,   // TRAINERCLASS_SUPER_NERD
    TRAINER_MALE,   // TRAINERCLASS_SAGE
    TRAINER_FEMALE, // TRAINERCLASS_PARASOL_LADY
    TRAINER_MALE,   // TRAINERCLASS_WAITER
    TRAINER_FEMALE, // TRAINERCLASS_MEDIUM
    TRAINER_MALE,   // TRAINERCLASS_CAMERAMAN
    TRAINER_FEMALE, // TRAINERCLASS_REPORTER
    TRAINER_FEMALE, // TRAINERCLASS_IDOL
    TRAINER_MALE,   // TRAINERCLASS_CHAMPION
    TRAINER_FEMALE, // TRAINERCLASS_ELITE_FOUR_WILL
    TRAINER_FEMALE, // TRAINERCLASS_ELITE_FOUR_KAREN
    TRAINER_DOUBLE, // TRAINERCLASS_ELITE_FOUR_KOGA
    TRAINER_FEMALE, // TRAINERCLASS_PKMN_TRAINER_CHERYL
    TRAINER_MALE,   // TRAINERCLASS_PKMN_TRAINER_RILEY
    TRAINER_FEMALE, // TRAINERCLASS_PKMN_TRAINER_BUCK
    TRAINER_MALE,   // TRAINERCLASS_PKMN_TRAINER_MIRA
    TRAINER_FEMALE, // TRAINERCLASS_PKMN_TRAINER_MARLEY
    TRAINER_MALE,   // TRAINERCLASS_PKMN_TRAINER_FTR_LUCAS
    TRAINER_FEMALE, // TRAINERCLASS_PKMN_TRAINER_FTR_DAWN
    TRAINER_MALE,   // TRAINERCLASS_TOWER_TYCOON
    TRAINER_MALE,   // TRAINERCLASS_LEADER_BROCK
    TRAINER_FEMALE, // TRAINERCLASS_HALL_MATRON
    TRAINER_MALE,   // TRAINERCLASS_FACTORY_HEAD
    TRAINER_FEMALE, // TRAINERCLASS_ARCADE_STAR
    TRAINER_MALE,   // TRAINERCLASS_CASTLE_VALET
    TRAINER_FEMALE, // TRAINERCLASS_LEADER_MISTY
    TRAINER_MALE,   // TRAINERCLASS_LEADER_LT_SURGE
    TRAINER_FEMALE, // TRAINERCLASS_LEADER_ERIKA
    TRAINER_FEMALE, // TRAINERCLASS_LEADER_JANINE
    TRAINER_FEMALE, // TRAINERCLASS_LEADER_SABRINA
    TRAINER_MALE,   // TRAINERCLASS_LEADER_BLAINE
    TRAINER_MALE,   // TRAINERCLASS_PKMN_TRAINER_RED
    TRAINER_MALE,   // TRAINERCLASS_LEADER_BLUE
    TRAINER_MALE,   // TRAINERCLASS_ELDER
    TRAINER_DOUBLE, // TRAINERCLASS_ELITE_FOUR_BRUNO
    TRAINER_MALE,   // TRAINERCLASS_SCIENTIST_GS
    TRAINER_FEMALE, // TRAINERCLASS_EXECUTIVE_ARIANA
    TRAINER_MALE,   // TRAINERCLASS_BOARDER
    TRAINER_MALE,   // TRAINERCLASS_EXECUTIVE_ARCHER
    TRAINER_MALE,   // TRAINERCLASS_EXECUTIVE_PROTON
    TRAINER_MALE,   // TRAINERCLASS_EXECUTIVE_PETREL
    TRAINER_MALE,   // TRAINERCLASS_PASSERBY
    TRAINER_MALE,   // TRAINERCLASS_MYSTERY_MAN
    TRAINER_MALE,   // TRAINERCLASS_DOUBLE_TEAM
    TRAINER_MALE,   // TRAINERCLASS_YOUNG_COUPLE
    TRAINER_MALE,   // TRAINERCLASS_PKMN_TRAINER_LANCE
    TRAINER_MALE,   // TRAINERCLASS_ROCKET_BOSS
    TRAINER_MALE,   // TRAINERCLASS_PKMN_TRAINER_LUCAS_DP
    TRAINER_FEMALE, // TRAINERCLASS_PKMN_TRAINER_DAWN_DP
    TRAINER_MALE,   // TRAINERCLASS_PKMN_TRAINER_LUCAS_PT
};

TrainerGender TrainerClass_GetGenderOrTrainerCount(int trainerClass) {
    return sTrainerGenders[trainerClass];
}

void TrMon_OverridePidGender(int species, int forme, int overrideParam, u32 *pid);
void TrMon_FrustrationCheckAndSetFriendship(POKEMON *pokemon);

void CreateNPCTrainerParty(BATTLE_SETUP *enemies, int party_id, HeapID heap_id) {
    // enemies -> r4
    // party_id -> sp10
    // heap_id -> sp14
    TRPOKE * data; // sp74
    int i;
    int j;
    u32 pid_gender; // sp7C
    u32 personality;
    u32 seed_bak;
    u8 iv;
    POKEMON * pokemon;

    // We abuse the global RNG for personality value generation,
    // so back up the overworld state here.
    seed_bak = GetLCRNGSeed();
    InitPartyWithMaxSize(enemies->party[party_id], PARTY_SIZE);
    data = (TRPOKE *)AllocFromHeap(heap_id, sizeof(TRPOKE) * PARTY_SIZE);
    pokemon = AllocMonZeroed(heap_id);
    TrainerData_ReadTrPoke(enemies->trainerId[party_id], data);

    // If a Pokemon's gender ratio is 50/50, the generated Pokemon will be the same
    // gender as its trainer. Otherwise, it will assume the more abundant gender
    // according to its species gender ratio. In double battles, the behavior is
    // identical to that of a solitary male opponent.
    if (TrainerClass_GetGenderOrTrainerCount(enemies->trainer[party_id].trainerClass) == TRAINER_FEMALE) {
        pid_gender = 0x78;
    } else {
        pid_gender = 0x88;
    }

    // The trainer types can be more efficiently and expandibly treated as a flag
    // array, with bit 0 being custom moveset and bit 1 being held item.
    // Nintendo didn't do it that way, instead using a switch statement and a lot
    // of code duplication. This has been the case since the 2nd generation games.
    switch (enemies->trainer[party_id].trainerType) {
    case TRTYPE_MON: {
        TRPOKE_NOITEM_DFLTMOVES *monSpecies;
        u16 species;
        u8 forme;
        monSpecies = &data->species;
        for (i = 0; i < enemies->trainer[party_id].npoke; i++) {
            // Starting in Platinum, the Pokemon's forme was encoded
            // in the upper 6 bits of the species.
            species = monSpecies[i].species & 0x3FF;
            forme = (monSpecies[i].species & 0xFC00) >> 10;
            // Starting in HGSS, additional checks are performed to
            // rand each Pokemon's personality.
            TrMon_OverridePidGender(species, forme, monSpecies[i].genderAbilityOverride, &pid_gender);
            // Generate personality by seeding with a value based on the difficulty,
            // level, species, and opponent ID. Roll the RNG N times, where N is
            // the index of its trainer class. Finally, left shift the 16-bit
            // pseudorandom value and add the gender selector.
            // This guarantees that NPC trainer' Pokemon are generated in a
            // consistent manner between attempts.
            // This procedure results in only a 24-bit peersonality value.
            personality = monSpecies[i].difficulty + monSpecies[i].level + species + enemies->trainerId[party_id];
            SetLCRNGSeed(personality);
            for (j = 0; j < enemies->trainer[party_id].trainerClass; j++) {
                personality = LCRandom();
            }
            personality = (personality << 8) + pid_gender;

            // Difficulty is a number between 0 and 250 which directly corresponds
            // to the (uniform) IV spread of the generated Pokemon.
            iv = (u8)((monSpecies[i].difficulty * 31) / 255);
            CreateMon(pokemon, species, monSpecies[i].level, iv, TRUE, (s32)personality, OT_ID_RANDOM_NO_SHINY, 0);

            // If you were treating the trainer type as a bitfield, you'd put the
            // checks for held item and moves here. You'd also treat the trpoke
            // data as a flat u16 array rather than an array of fixed-width structs.

            // Starting in Platinum, enemy trainer could have
            // personalized ball capsules.
            SetTrMonCapsule(monSpecies[i].capsule, pokemon, heap_id);
            SetMonData(pokemon, MON_DATA_FORME, &forme);
            // Starting in HGSS, an AI Pokemon with Frustration
            // will have minimum friendship.
            TrMon_FrustrationCheckAndSetFriendship(pokemon);
            AddMonToParty(enemies->party[party_id], pokemon);
        }
        break;
    }
    case TRTYPE_MON_MOVES: {
        TRPOKE_NOITEM_CUSTMOVES *monSpeciesMoves;
        u16 species;
        u8 forme;
        monSpeciesMoves = &data->species_moves;
        for (i = 0; i < enemies->trainer[party_id].npoke; i++) {
            species = monSpeciesMoves[i].species & 0x3FF;
            forme = (monSpeciesMoves[i].species & 0xFC00) >> 10;
            TrMon_OverridePidGender(species, forme, monSpeciesMoves[i].genderAbilityOverride, &pid_gender);
            personality = monSpeciesMoves[i].difficulty + monSpeciesMoves[i].level + species + enemies->trainerId[party_id];
            SetLCRNGSeed(personality);
            for (j = 0; j < enemies->trainer[party_id].trainerClass; j++) {
                personality = LCRandom();
            }
            personality = (personality << 8) + pid_gender;
            iv = (u8)((monSpeciesMoves[i].difficulty * 31) / 255);
            CreateMon(pokemon, species, monSpeciesMoves[i].level, iv, TRUE, (s32)personality, OT_ID_RANDOM_NO_SHINY, 0);
            for (j = 0; j < MON_MOVES; j++) {
                MonSetMoveInSlot(pokemon, monSpeciesMoves[i].moves[j], (u8)j);
            }
            SetTrMonCapsule(monSpeciesMoves[i].capsule, pokemon, heap_id);
            SetMonData(pokemon, MON_DATA_FORME, &forme);
            TrMon_FrustrationCheckAndSetFriendship(pokemon);
            AddMonToParty(enemies->party[party_id], pokemon);
        }
        break;
    }
    case TRTYPE_MON_ITEM: {
        TRPOKE_ITEM_DFLTMOVES *monSpeciesItem;
        u16 species;
        u8 forme;
        monSpeciesItem = &data->species_item;
        for (i = 0; i < enemies->trainer[party_id].npoke; i++) {
            species = monSpeciesItem[i].species & 0x3FF;
            forme = (monSpeciesItem[i].species & 0xFC00) >> 10;
            TrMon_OverridePidGender(species, forme, monSpeciesItem[i].genderAbilityOverride, &pid_gender);
            personality = monSpeciesItem[i].difficulty + monSpeciesItem[i].level + species + enemies->trainerId[party_id];
            SetLCRNGSeed(personality);
            for (j = 0; j < enemies->trainer[party_id].trainerClass; j++) {
                personality = LCRandom();
            }
            personality = (personality << 8) + pid_gender;
            iv = (u8)((monSpeciesItem[i].difficulty * 31) / 255);
            CreateMon(pokemon, species, monSpeciesItem[i].level, iv, TRUE, (s32)personality, OT_ID_RANDOM_NO_SHINY, 0);
            SetMonData(pokemon, MON_DATA_HELD_ITEM, &monSpeciesItem[i].item);
            SetTrMonCapsule(monSpeciesItem[i].capsule, pokemon, heap_id);
            SetMonData(pokemon, MON_DATA_FORME, &forme);
            TrMon_FrustrationCheckAndSetFriendship(pokemon);
            AddMonToParty(enemies->party[party_id], pokemon);
        }
        break;
    }
    case TRTYPE_MON_ITEM_MOVES: {
        TRPOKE_ITEM_CUSTMOVES *monSpeciesItemMoves;
        u16 species;
        u8 forme;
        monSpeciesItemMoves = &data->species_item_moves;
        for (i = 0; i < enemies->trainer[party_id].npoke; i++) {
            species = monSpeciesItemMoves[i].species & 0x3FF;
            forme = (monSpeciesItemMoves[i].species & 0xFC00) >> 10;
            TrMon_OverridePidGender(species, forme, monSpeciesItemMoves[i].genderAbilityOverride, &pid_gender);
            personality = monSpeciesItemMoves[i].difficulty + monSpeciesItemMoves[i].level + species + enemies->trainerId[party_id];
            SetLCRNGSeed(personality);
            for (j = 0; j < enemies->trainer[party_id].trainerClass; j++) {
                personality = LCRandom();
            }
            personality = (personality << 8) + pid_gender;
            iv = (u8)((monSpeciesItemMoves[i].difficulty * 31) / 255);
            CreateMon(pokemon, species, monSpeciesItemMoves[i].level, iv, TRUE, (s32)personality, OT_ID_RANDOM_NO_SHINY, 0);
            SetMonData(pokemon, MON_DATA_HELD_ITEM, &monSpeciesItemMoves[i].item);
            for (j = 0; j < MON_MOVES; j++) {
                MonSetMoveInSlot(pokemon, monSpeciesItemMoves[i].moves[j], (u8)j);
            }
            SetTrMonCapsule(monSpeciesItemMoves[i].capsule, pokemon, heap_id);
            SetMonData(pokemon, MON_DATA_FORME, &forme);
            TrMon_FrustrationCheckAndSetFriendship(pokemon);
            AddMonToParty(enemies->party[party_id], pokemon);
        }
        break;
    }
    case TRTYPE_SHOUJO: {
        TRPOKE_SHOUJO *monShoujo;
        u16 species;
        u8 forme;
        monShoujo = &data->species_shoujo;
        for (i = 0; i < enemies->trainer[party_id].npoke; i++) {
            species = monShoujo[i].species & 0x3FF;
            forme = (monShoujo[i].species & 0xFC00) >> 10;
            TrMon_OverridePidGender(species, forme, monShoujo[i].genderAbilityOverride, &pid_gender);
            personality = monShoujo[i].difficulty + monShoujo[i].level + species + enemies->trainerId[party_id];
            SetLCRNGSeed(personality);
            do {
                for (j = 0; j < enemies->trainer[party_id].trainerClass; j++) {
                    personality = LCRandom();
                }
                personality = (personality << 8) + pid_gender;
            } while (personality % 25 != monShoujo[i].nature);
            iv = (u8)((monShoujo[i].difficulty * 31) / 255);
            CreateMon(pokemon, species, monShoujo[i].level, iv, TRUE, (s32)personality, OT_ID_RANDOM_NO_SHINY, 0);
            SetMonData(pokemon, MON_DATA_HELD_ITEM, &monShoujo[i].item);
            for (j = 0; j < MON_MOVES; j++) {
                MonSetMoveInSlot(pokemon, monShoujo[i].moves[j], (u8)j);
            }
            SetTrMonCapsule(monShoujo[i].capsule, pokemon, heap_id);
            SetMonData(pokemon, MON_DATA_FORME, &forme);
            SetMonData(pokemon, MON_DATA_ABILITY, &monShoujo[i].ability);
            TrMon_FrustrationCheckAndSetFriendship(pokemon);
            AddMonToParty(enemies->party[party_id], pokemon);
        }
        break;
    }
    }
    FreeToHeap(data);
    FreeToHeap(pokemon);
    SetLCRNGSeed(seed_bak); // Restore the RNG state
}

void TrMon_OverridePidGender(int species, int forme, int overrideParam, u32 *pid) {
    int genderOverride = overrideParam & 0xF;
    int abilityOverride = (overrideParam & 0xF0) >> 4;
    if (overrideParam != 0) {
        if (genderOverride != 0) {
            *pid = GetMonBaseStat_HandleAlternateForme(species, forme, BASE_GENDER_RATIO);
            if (genderOverride == 1) {
                *pid += 2;
            } else {
                *pid -= 2;
            }
        }
        if (abilityOverride == 1) {
            *pid &= ~1;
        } else if (abilityOverride == 2) {
            *pid |= 1;
        }
    }
}

void TrMon_FrustrationCheckAndSetFriendship(POKEMON *pokemon) {
    u8 friendship = FRIENDSHIP_MAX;
    int i;

    for (i = 0; i < MON_MOVES; i++) {
        if (GetMonData(pokemon, MON_DATA_MOVE1 + i, NULL) == MOVE_FRUSTRATION) {
            friendship = 0;
        }
    }
    SetMonData(pokemon, MON_DATA_FRIENDSHIP, &friendship);
}
