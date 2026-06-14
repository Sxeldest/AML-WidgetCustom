; =========================================================
; Game Engine Function: _ZN13CEventHandler21IsKillTaskAppropriateEP4CPedS1_RK6CEvent
; Address            : 0x383BDA - 0x383C20
; =========================================================

383BDA:  PUSH            {R4,R5,R7,LR}
383BDC:  ADD             R7, SP, #8
383BDE:  MOV             R4, R1
383BE0:  LDRB.W          R1, [R0,#0x448]
383BE4:  CMP             R1, #2
383BE6:  BEQ             loc_383C1C
383BE8:  LDRSB.W         R1, [R0,#0x71C]
383BEC:  LDRSB.W         R5, [R4,#0x71C]
383BF0:  RSB.W           R1, R1, R1,LSL#3
383BF4:  ADD.W           R0, R0, R1,LSL#2
383BF8:  ADDW            R0, R0, #0x5A4; this
383BFC:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
383C00:  CMP             R0, #1
383C02:  BNE             loc_383C1C
383C04:  RSB.W           R0, R5, R5,LSL#3
383C08:  ADD.W           R0, R4, R0,LSL#2
383C0C:  ADDW            R0, R0, #0x5A4; this
383C10:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
383C14:  CMP             R0, #1
383C16:  ITT NE
383C18:  MOVNE           R0, #0
383C1A:  POPNE           {R4,R5,R7,PC}
383C1C:  MOVS            R0, #1
383C1E:  POP             {R4,R5,R7,PC}
