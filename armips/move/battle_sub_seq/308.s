.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// handle sap sipper, based on motor drive

.create "build/move/battle_sub_seq/1_308", 0x0

a001_308:
    printattackmessage
    waitmessage
    wait 0xF
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_STAT_STAGE_ATTACK, 12, _0084
    setstatus2effect BATTLER_DEFENDER, 0xC
    waitmessage
    changemondatabyvalue VAR_OP_ADD, BATTLER_DEFENDER, MON_DATA_STAT_STAGE_ATTACK, 0x1
    changevar VAR_OP_SET, VAR_MESSAGE_WORK, STAT_ATTACK
    printmessage 0x26E, 0x27, 0x2, 0x2, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_0084:
    printmessage 0x27E, 0x25, 0x2, 0x2, 0x1, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
    endscript

.close