; =========================================================
; Game Engine Function: _ZN16CTaskSimpleGetUp10ProcessPedEP4CPed
; Address            : 0x52B1A0 - 0x52B232
; =========================================================

52B1A0:  PUSH            {R4,R5,R7,LR}
52B1A2:  ADD             R7, SP, #8
52B1A4:  MOV             R4, R1
52B1A6:  MOV             R5, R0
52B1A8:  LDR.W           R0, [R4,#0x534]
52B1AC:  ORR.W           R0, R0, #8
52B1B0:  STR.W           R0, [R4,#0x534]
52B1B4:  LDRB            R0, [R5,#9]
52B1B6:  CMP             R0, #0
52B1B8:  ITT NE
52B1BA:  MOVNE           R0, #1
52B1BC:  POPNE           {R4,R5,R7,PC}
52B1BE:  LDR             R0, [R5,#0xC]
52B1C0:  CBNZ            R0, loc_52B1CE
52B1C2:  MOV             R0, R5; this
52B1C4:  MOV             R1, R4; CPed *
52B1C6:  BLX             j__ZN16CTaskSimpleGetUp9StartAnimEP4CPed; CTaskSimpleGetUp::StartAnim(CPed *)
52B1CA:  LDR             R0, [R5,#0xC]
52B1CC:  CBZ             R0, loc_52B20E
52B1CE:  LDR.W           R0, [R4,#0x490]
52B1D2:  LDR.W           R12, [R4,#0x484]
52B1D6:  LDR.W           R1, [R4,#0x488]
52B1DA:  BIC.W           R2, R0, #8
52B1DE:  LDR.W           R3, [R4,#0x48C]
52B1E2:  STR.W           R2, [R4,#0x490]
52B1E6:  LDR             R0, [R5,#0xC]
52B1E8:  ADDW            R5, R4, #0x484
52B1EC:  CBZ             R0, loc_52B222
52B1EE:  VMOV.F32        S0, #0.75
52B1F2:  LDR             R4, [R0,#0x14]
52B1F4:  VLDR            S2, [R4,#0x10]
52B1F8:  VMUL.F32        S0, S2, S0
52B1FC:  VLDR            S2, [R0,#0x20]
52B200:  VCMPE.F32       S2, S0
52B204:  VMRS            APSR_nzcv, FPSCR
52B208:  BLT             loc_52B222
52B20A:  MOVS            R0, #0
52B20C:  POP             {R4,R5,R7,PC}
52B20E:  LDR.W           R12, [R4,#0x484]
52B212:  ADDW            R5, R4, #0x484
52B216:  LDR.W           R1, [R4,#0x488]
52B21A:  LDR.W           R3, [R4,#0x48C]
52B21E:  LDR.W           R2, [R4,#0x490]
52B222:  ORR.W           R0, R3, #0x100000
52B226:  STRD.W          R12, R1, [R5]
52B22A:  STRD.W          R0, R2, [R5,#8]
52B22E:  MOVS            R0, #0
52B230:  POP             {R4,R5,R7,PC}
