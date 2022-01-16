.text
.align 2
.thumb

.global calc_base_damage_hook
calc_base_damage_hook:
ldr r5, =calc_base_damage_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl CalcBaseDamage
ldr r1, =calc_base_damage_return_address
ldr r1, [r1]
mov pc, r1

.pool

calc_base_damage_return_address:
.word 0


.global CalcAccuracy_hook
CalcAccuracy_hook:
ldr r5, =CalcAccuracy_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl CalcAccuracy
ldr r1, =CalcAccuracy_return_address
ldr r1, [r1]
mov pc, r1

.pool

CalcAccuracy_return_address:
.word 0


.global CalcSpeed_hook
CalcSpeed_hook:
ldr r5, =CalcSpeed_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl CalcSpeed
ldr r1, =CalcSpeed_return_address
ldr r1, [r1]
mov pc, r1

.pool

CalcSpeed_return_address:
.word 0


.global CalcCritical_hook
CalcCritical_hook:
ldr r5, =CalcCritical_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl CalcCritical
ldr r1, =CalcCritical_return_address
ldr r1, [r1]
mov pc, r1

.pool

CalcCritical_return_address:
.word 0
