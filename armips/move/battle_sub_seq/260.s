.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_260", 0

a001_260:
    checkchatteractivation _0010
    gotosubscript 37
_0010:
    endscript

.close
