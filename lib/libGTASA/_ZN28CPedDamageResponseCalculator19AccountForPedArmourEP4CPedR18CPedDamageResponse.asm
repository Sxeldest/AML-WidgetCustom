; =========================================================
; Game Engine Function: _ZN28CPedDamageResponseCalculator19AccountForPedArmourEP4CPedR18CPedDamageResponse
; Address            : 0x371EE8 - 0x371F82
; =========================================================

371EE8:  PUSH            {R4-R7,LR}
371EEA:  ADD             R7, SP, #0xC
371EEC:  PUSH.W          {R8}
371EF0:  MOV             R6, R1
371EF2:  ADDW            R4, R6, #0x54C
371EF6:  MOV             R8, R2
371EF8:  MOV             R5, R0
371EFA:  VLDR            S0, [R4]
371EFE:  VCMP.F32        S0, #0.0
371F02:  VMRS            APSR_nzcv, FPSCR
371F06:  BEQ             loc_371F7C
371F08:  LDR             R0, [R5,#0xC]
371F0A:  SUBS            R0, #0x35 ; '5'
371F0C:  CMP             R0, #2
371F0E:  BCC             loc_371F7C
371F10:  MOV.W           R0, #0xFFFFFFFF; int
371F14:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
371F18:  CMP             R0, R6
371F1A:  BNE             loc_371F3E
371F1C:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x371F28)
371F1E:  MOV.W           R3, #0x194
371F22:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x371F2C)
371F24:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
371F26:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x371F30)
371F28:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
371F2A:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
371F2C:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
371F2E:  LDR             R1, [R1]; CWorld::Players ...
371F30:  LDR             R0, [R0]; CWorld::PlayerInFocus
371F32:  SMLABB.W        R0, R0, R3, R1
371F36:  LDR             R1, [R2]; CTimer::m_snTimeInMilliseconds ...
371F38:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
371F3A:  STR.W           R1, [R0,#0xE8]
371F3E:  VLDR            S2, [R4]
371F42:  ADDS            R0, R5, #4
371F44:  VLDR            S0, [R5,#4]
371F48:  VCMPE.F32       S0, S2
371F4C:  VMRS            APSR_nzcv, FPSCR
371F50:  BLE             loc_371F64
371F52:  VSUB.F32        S0, S0, S2
371F56:  VSTR            S0, [R0]
371F5A:  LDR             R0, [R4]
371F5C:  STR.W           R0, [R8,#4]
371F60:  MOV             R0, R4
371F62:  B               loc_371F78
371F64:  VSTR            S0, [R8,#4]
371F68:  VLDR            S0, [R0]
371F6C:  VLDR            S2, [R4]
371F70:  VSUB.F32        S0, S2, S0
371F74:  VSTR            S0, [R4]
371F78:  MOVS            R1, #0
371F7A:  STR             R1, [R0]
371F7C:  POP.W           {R8}
371F80:  POP             {R4-R7,PC}
