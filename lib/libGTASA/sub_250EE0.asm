; =========================================================
; Game Engine Function: sub_250EE0
; Address            : 0x250EE0 - 0x250F62
; =========================================================

250EE0:  PUSH            {R4,R5,R7,LR}
250EE2:  ADD             R7, SP, #8
250EE4:  VLDR            S0, [R1,#0x10]
250EE8:  MOV             R4, R0
250EEA:  VLDR            S2, =0.404
250EEE:  VCVT.F32.U32    S0, S0
250EF2:  VLDR            S4, =0.207
250EF6:  VMUL.F32        S2, S0, S2
250EFA:  VMUL.F32        S0, S0, S4
250EFE:  VCVT.S32.F32    S2, S2
250F02:  VCVT.S32.F32    S0, S0
250F06:  VMOV            R0, S2
250F0A:  VMOV            R1, S0
250F0E:  ADD             R0, R1
250F10:  ADDS            R1, R0, #2
250F12:  BNE             loc_250F18
250F14:  MOVS            R5, #1
250F16:  B               loc_250F30
250F18:  ADDS            R0, #1
250F1A:  ORR.W           R0, R0, R0,LSR#1
250F1E:  ORR.W           R0, R0, R0,LSR#2
250F22:  ORR.W           R0, R0, R0,LSR#4
250F26:  ORR.W           R0, R0, R0,LSR#8
250F2A:  ORR.W           R0, R0, R0,LSR#16
250F2E:  ADDS            R5, R0, #1
250F30:  LDR             R0, [R4,#0x14]
250F32:  CMP             R5, R0
250F34:  BEQ             loc_250F44
250F36:  LDR             R0, [R4,#0x10]; ptr
250F38:  LSLS            R1, R5, #2; size
250F3A:  BLX             realloc
250F3E:  CBZ             R0, loc_250F5E
250F40:  STRD.W          R0, R5, [R4,#0x10]
250F44:  CBZ             R5, loc_250F5A
250F46:  MOVS            R0, #0
250F48:  MOVS            R1, #0
250F4A:  MOVS            R2, #0
250F4C:  LDR             R3, [R4,#0x10]
250F4E:  ADDS            R2, #1
250F50:  STR             R0, [R3,R1]
250F52:  ADDS            R1, #4
250F54:  LDR             R3, [R4,#0x14]
250F56:  CMP             R2, R3
250F58:  BCC             loc_250F4C
250F5A:  MOVS            R0, #1
250F5C:  POP             {R4,R5,R7,PC}
250F5E:  MOVS            R0, #0
250F60:  POP             {R4,R5,R7,PC}
