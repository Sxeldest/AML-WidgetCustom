; =========================================================
; Game Engine Function: _ZN12CHIDJoystick26InternalIsReleasedNegativeE10HIDMapping
; Address            : 0x28D2A4 - 0x28D30E
; =========================================================

28D2A4:  PUSH            {R4,R6,R7,LR}
28D2A6:  ADD             R7, SP, #8
28D2A8:  LDR             R3, [R0,#8]
28D2AA:  CBZ             R3, loc_28D2CA
28D2AC:  LDR             R0, [R0,#0xC]
28D2AE:  MOVS            R4, #0
28D2B0:  ADDS            R0, #0xC
28D2B2:  LDR.W           R2, [R0,#-8]
28D2B6:  CMP             R2, R1
28D2B8:  BNE             loc_28D2C2
28D2BA:  LDR.W           R2, [R0,#-0xC]
28D2BE:  CMP             R2, #0x10
28D2C0:  BGE             loc_28D2D0
28D2C2:  ADDS            R4, #1
28D2C4:  ADDS            R0, #0x14
28D2C6:  CMP             R4, R3
28D2C8:  BCC             loc_28D2B2
28D2CA:  MOVS            R4, #0
28D2CC:  MOV             R0, R4
28D2CE:  POP             {R4,R6,R7,PC}
28D2D0:  VMOV.F32        S0, #-0.5
28D2D4:  VLDR            S2, [R0]
28D2D8:  MOVS            R4, #0
28D2DA:  VCMPE.F32       S2, S0
28D2DE:  VMRS            APSR_nzcv, FPSCR
28D2E2:  BGE             loc_28D2CC
28D2E4:  LDR             R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28D2EC)
28D2E6:  MOV             R1, R2; unsigned int
28D2E8:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28D2EA:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
28D2EC:  LDR             R0, [R0]; unsigned int
28D2EE:  BLX             j__Z14OS_GamepadAxisjj; OS_GamepadAxis(uint,uint)
28D2F2:  VMOV.F32        S0, #0.5
28D2F6:  BIC.W           R0, R0, #0x80000000
28D2FA:  VMOV            S2, R0
28D2FE:  VCMPE.F32       S2, S0
28D302:  VMRS            APSR_nzcv, FPSCR
28D306:  IT LT
28D308:  MOVLT           R4, #1
28D30A:  MOV             R0, R4
28D30C:  POP             {R4,R6,R7,PC}
