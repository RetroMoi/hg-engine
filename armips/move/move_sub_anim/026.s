.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_sub_anim/1_026", 0

a061_026:
    initspriteresource
    loadspriteresource 0
    playsepan 1984, -117
    loadspritemaybe 0, 0, 0, 0
    callfunction 38, 6, 1, 16, 0, 0, 16, 8, "NaN", "NaN", "NaN", "NaN"
    wait 1
    callfunction 40, 2, 2, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    end

.close
