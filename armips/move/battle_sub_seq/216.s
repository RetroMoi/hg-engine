.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_216", 0

a001_216:
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x37, VAR_TEMP_WORK
    changemondatabyvar VAR_OP_SET, BATTLER_ATTACKER, 0x37, VAR_TEMP_WORK
    changemondatabyvalue VAR_OP_SET, BATTLER_DEFENDER, 0x37, 0x0
    endscript

.close
