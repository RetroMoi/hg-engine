.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// fix magic coat message for magic bounce

.create "build/move/battle_sub_seq/1_139", 0

a001_139:
    printattackmessage
    waitmessage
    wait 0xF
    moldbreakerabilitycheck 0x0, BATTLER_DEFENDER, ABILITY_MAGIC_BOUNCE, msg_ability    
    printmessage 0x23E, 0xA, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN"
    goto script_end
    
msg_ability:
    printmessage 1336, 0xA, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN"

script_end:
    waitmessage
    wait 0x1E
    magiccoat
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS1, 0x4000
    endscript

.close
