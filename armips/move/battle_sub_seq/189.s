.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_189", 0

a001_189:
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x40
    gotosubscript 2
    printmessage 0x2A0, 0x24, 0x2, 0x2, 0x1, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
