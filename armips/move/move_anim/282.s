.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_282", 0

a010_282:
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
    loadparticle 0, 300
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 57, 4, 2, 14, -8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    playsepan 2039, 117
    addparticle 0, 1, 4
    addparticle 0, 2, 4
    addparticle 0, 0, 4
    callfunction 57, 4, 2, -14, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 5
    callfunction 36, 5, 0, 4, 1, 1, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    playsepan 1905, 117
    waitparticle
    unloadparticle 0
    end

.close
