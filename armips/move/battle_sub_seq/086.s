.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_086", 0

a001_086:
    if IF_MASK, VAR_MOVE_STATUS, 0x8000, _00B4
    if IF_MASK, VAR_MOVE_STATUS, 0x1FD849, _009C
    ifmonstat IF_MASK, BATTLER_DEFENDER, MON_DATA_STATUS_2, 0x4000000, _00C4
    checksubstitute BATTLER_DEFENDER, _00C4
    gotosubscript 76
    changemondatabyvalue VAR_OP_SETMASK, BATTLER_DEFENDER, 0x35, 0x4000000
    changemondatabyvar VAR_OP_SETMASK, BATTLER_DEFENDER, 0x4D, VAR_ATTACKER
    printmessage 0x198, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_009C:
    changevar VAR_OP_CLEARMASK, VAR_MOVE_STATUS, 0x10000
    goto _00C4
_00B4:
    changevar VAR_OP_CLEARMASK, VAR_MOVE_STATUS, 0x8000
_00C4:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
