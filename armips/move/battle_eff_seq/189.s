.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_189", 0

a030_189:
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x2F, VAR_DAMAGE
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x2F, VAR_CALCULATION_WORK
    if2 IF_LESSTHAN, VAR_DAMAGE, 0x9, _0070
    changevar2 VAR_OP_SUB, VAR_DAMAGE, VAR_CALCULATION_WORK
    changevar VAR_OP_MUL, VAR_DAMAGE, 0xFFFFFFFF
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x800
    endscript
_0070:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
