.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_103", 0

a010_103:
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
    loadparticle 0, 132
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle 0, 0, 3
    addparticle 0, 1, 3
    playsepan 1824, -117
    wait 15
    loop 1
    callfunction 52, 3, 8, 8, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8
    callfunction 52, 3, 16, -16, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 16
    callfunction 52, 3, 8, 8, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8
    doloop
    waitparticle
    unloadparticle 0
    end

.close
