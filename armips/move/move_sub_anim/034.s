.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_sub_anim/1_034", 0

a061_034:
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspriteresource 2
    loadspriteresource 3
    loadspritemaybe 4, 0, 0, 0
    loadspritemaybe 5, 0, 1, 1
    loadspritemaybe 6, 0, 2, 2
    loadspritemaybe 7, 0, 3, 3
    callfunction 78, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    loadparticle 0, 66
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    loop 2
    repeatse 1919, -117, 4, 2
    addparticle 0, 0, 3
    callfunction 60, 3, 2, 1, 12, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 42, 8, 258, 100, 70, 100, 100, 100, 1, 327685, "NaN", "NaN"
    waitstate
    doloop
    waitparticle
    unloadparticle 0
    end

.close
