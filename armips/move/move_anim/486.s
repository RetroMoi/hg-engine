.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_486", 0

red equ 31
green equ 31
blue equ 31

a010_486:
    loadparticlefromspa 0, 499
    waitparticle

    callfunction 34, 6, 2, 0, 1, red | green << 5 | blue << 10, 10, 15, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 3, 0, 1, 10, 264, "NaN", "NaN", "NaN", "NaN", "NaN" // shake target mon
    addparticle 0, 2, 3
    addparticle 0, 1, 3
    addparticle 0, 0, 3
    playsepan 1911, -117
    wait 2
    playsepan 1911, -117
    wait 2
    playsepan 1911, -117
    wait 2
    playsepan 1911, -117
    wait 2
    playsepan 1911, -117
    wait 2
    playsepan 1911, -117
    wait 2
    playsepan 1911, -117
    waitparticle

    unloadparticle 0
    waitstate
    end
    

.close
