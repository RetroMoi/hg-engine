.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_095", 0

a001_095:
    changemondatabyvalue VAR_OP_SETMASK, BATTLER_ADDL_EFFECT, 0x3B, 0x100
    changevar VAR_OP_SET, VAR_ADD_EFFECT_ATTRIBUTE, 0x2D
    jumptosubseq 12

.close
