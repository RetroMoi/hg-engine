.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_272", 0

a030_272:
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0x1000, _00C8
    if IF_MASK, VAR_SERVER_STATUS1, 0x200, _00C8
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x63, _0078
    changemondatabyvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x3B, 0x20000000
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x4000000C
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x23
    endscript
_0078:
    changemondatabyvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x3B, 0x20000000
    changemondatabyvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x3C, 0x20000000
    gotosubscript 217
    togglevanish BATTLER_ATTACKER, 0x1
    if IF_EQUAL, VAR_DEFENDER, 0xFF, _00E0
_00C8:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000004F
    critcalc
    damagecalc
_00E0:
    changemondatabyvalue VAR_OP_CLEARMASK, BATTLER_ATTACKER, 0x3B, 0x200400C0
    gotosubscript 259
    endscript

.close
