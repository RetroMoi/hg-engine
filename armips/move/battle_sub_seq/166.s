.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_166", 0

a001_166:
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x14, VAR_CALCULATION_WORK
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x14, VAR_TEMP_WORK
    changemondatabyvar VAR_OP_SET, BATTLER_ATTACKER, 0x14, VAR_TEMP_WORK
    changemondatabyvar VAR_OP_SET, BATTLER_DEFENDER, 0x14, VAR_CALCULATION_WORK
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x17, VAR_CALCULATION_WORK
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x17, VAR_TEMP_WORK
    changemondatabyvar VAR_OP_SET, BATTLER_ATTACKER, 0x17, VAR_TEMP_WORK
    changemondatabyvar VAR_OP_SET, BATTLER_DEFENDER, 0x17, VAR_CALCULATION_WORK
    printmessage 0x3FA, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
