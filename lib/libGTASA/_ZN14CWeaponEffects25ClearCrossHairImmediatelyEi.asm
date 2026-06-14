; =========================================================
; Game Engine Function: _ZN14CWeaponEffects25ClearCrossHairImmediatelyEi
; Address            : 0x5E32E0 - 0x5E330E
; =========================================================

5E32E0:  PUSH            {R7,LR}
5E32E2:  MOV             R7, SP
5E32E4:  LDR             R1, =(gCrossHair_ptr - 0x5E32F4)
5E32E6:  MOVS            R3, #0x2C ; ','
5E32E8:  LDR.W           R12, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5E32F6)
5E32EC:  MUL.W           R2, R0, R3
5E32F0:  ADD             R1, PC; gCrossHair_ptr
5E32F2:  ADD             R12, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5E32F4:  LDR             R1, [R1]; gCrossHair
5E32F6:  MLA.W           LR, R0, R3, R1
5E32FA:  LDR.W           R3, [R12]; CTimer::m_snTimeInMilliseconds ...
5E32FE:  MOVS            R0, #0
5E3300:  STRB            R0, [R1,R2]
5E3302:  LDR             R3, [R3]; CTimer::m_snTimeInMilliseconds
5E3304:  SUB.W           R0, R3, #0x64 ; 'd'
5E3308:  STR.W           R0, [LR,#4]
5E330C:  POP             {R7,PC}
