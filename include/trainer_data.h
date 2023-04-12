#ifndef POKEHEARTGOLD_TRAINER_DATA_H
#define POKEHEARTGOLD_TRAINER_DATA_H

#include "constants/pokemon.h"
#include "constants/trainers.h"
#include "constants/trainer_class.h"

#ifndef PM_ASM
#include "pm_string.h"
#include "mail_message.h"
#include "pokemon_types_def.h"

typedef enum TrainerAttr {
    TRATTR_TYPE,
    TRATTR_CLASS,
    TRATTR_UNK2,
    TRATTR_NPOKE,
    TRATTR_ITEM1,
    TRATTR_ITEM2,
    TRATTR_ITEM3,
    TRATTR_ITEM4,
    TRATTR_AIFLAGS,
    TRATTR_DOUBLEBTL,
} TrainerAttr;

typedef enum TrainerGender {
    TRAINER_MALE,
    TRAINER_FEMALE,
    TRAINER_DOUBLE,
} TrainerGender;

typedef struct TrainerMonSpecies {
    // IV scale parameter
    u8 difficulty;

    // Bits 0-3: 0: No override
    //           1: Force male
    //           2: Force female
    // Bits 4-7: 0: No override
    //           1: Force ability 1
    //           2: Force ability 2
    u8 genderAbilityOverride;
    u16 level;

    // Bits 0-9: species
    // Bits 10-15: forme
    u16 species;
    u16 capsule;
} TRPOKE_NOITEM_DFLTMOVES;

typedef struct TrainerMonSpeciesMoves {
    u8 difficulty;
    u8 genderAbilityOverride;
    u16 level;
    u16 species;
    u16 moves[MON_MOVES];
    u16 capsule;
} TRPOKE_NOITEM_CUSTMOVES;

typedef struct TrainerMonSpeciesItem {
    u8 difficulty;
    u8 genderAbilityOverride;
    u16 level;
    u16 species;
    u16 item;
    u16 capsule;
} TRPOKE_ITEM_DFLTMOVES;

typedef struct TrainerMonSpeciesItemMoves {
    u8 difficulty;
    u8 genderAbilityOverride;
    u16 level;
    u16 species;
    u16 item;
    u16 moves[MON_MOVES];
    u16 capsule;
} TRPOKE_ITEM_CUSTMOVES;

typedef struct {
    u8 difficulty;
    u8 genderAbilityOverride;
    u16 level;
    u16 species;
    u16 item;
    u16 moves[MON_MOVES];
    u16 capsule;
    u8 ability;
    u8 nature;
} TRPOKE_SHOUJO;

typedef union TrainerMon {
    TRPOKE_NOITEM_DFLTMOVES species;
    TRPOKE_NOITEM_CUSTMOVES species_moves;
    TRPOKE_ITEM_DFLTMOVES species_item;
    TRPOKE_ITEM_CUSTMOVES species_item_moves;
    TRPOKE_SHOUJO species_shoujo;
} TRPOKE;

typedef struct TrainerData {
    /*000*/ u8 trainerType;
    /*001*/ u8 trainerClass;
    /*002*/ u8 unk_2; // unused
    /*003*/ u8 npoke;
    /*004*/ u16 items[4];
    /*00C*/ u32 ai_flags;
    /*010*/ u32 doubleBattle;
    /*014*/ u16 name[OT_NAME_LENGTH + 1];
    // Used in the Frontier
    /*024*/ MAIL_MESSAGE winMessage;
    /*02C*/ MAIL_MESSAGE loseMessage;
} TRAINER; // size=0x34

typedef struct BattleSetupStruct BATTLE_SETUP;

void TrainerData_ReadTrData(u32 trno, TRAINER *dest);
TrainerGender TrainerClass_GetGenderOrTrainerCount(int trainerClass);
int TrainerData_GetAttr(u32 tr_idx, TrainerAttr attr_no);
void EnemyTrainerSet_Init(BATTLE_SETUP *battleSetup, SAVEDATA *saveData, HeapID heap_id);
BOOL TrainerMessageWithIdPairExists(u32 trainer_idx, u32 msg_id, HeapID heap_id);
void GetTrainerMessageByIdPair(u32 trainer_idx, u32 msg_id, STRING * str, HeapID heap_id);
void TrainerData_ReadTrPoke(u32 idx, TRPOKE * dest);
void CreateNPCTrainerParty(BATTLE_SETUP *enemies, int party_id, HeapID heap_id);
void TrMon_OverridePidGender(int species, int forme, int overrideParam, u32 *pid);
void TrMon_FrustrationCheckAndSetFriendship(POKEMON *pokemon);
#endif //PM_ASM

#endif //POKEHEARTGOLD_TRAINER_DATA_H
