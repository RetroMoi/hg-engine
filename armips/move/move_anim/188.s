.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_188", 0

a010_188:
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
    loadparticle 0, 208
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle2 0, 1, 2, 3
    callfunction 66, 6, 1, 0, 0, 0, 14, 64, "NaN", "NaN", "NaN", "NaN"
    repeatse 1998, 0, 2, 4
    wait 10
    repeatse 1979, 117, 2, 12
    addparticle 0, 1, 4
    addparticle 0, 0, 4
    wait 5
    callfunction 34, 6, 8, 0, 2, 31764, 14, 0, "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    end

.close
