.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_045", 0

a030_045:
    abilitycheck 0x1, BATTLER_ATTACKER, ABILITY_RECKLESS, _0024
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0xC
_0024:
    changevar VAR_OP_SETMASK, VAR_06, 0x1000
    critcalc
    damagecalc
    endscript

.close
