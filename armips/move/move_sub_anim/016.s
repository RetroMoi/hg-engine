.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_sub_anim/1_016", 0

a061_016:
    callfunction 77, 5, 1, 2, 10, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1983, -117
    wait 1
    callfunction 40, 2, 2, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
