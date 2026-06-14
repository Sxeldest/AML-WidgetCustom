; =========================================================
; Game Engine Function: sub_FD5B0
; Address            : 0xFD5B0 - 0xFD5F6
; =========================================================

FD5B0:  PUSH            {R4,R6,R7,LR}
FD5B2:  ADD             R7, SP, #8
FD5B4:  MOV             R4, R0
FD5B6:  BL              sub_14B4F8
FD5BA:  VMOV            S0, R0
FD5BE:  VLDR            S2, [R4,#0x114]
FD5C2:  VSUB.F32        S0, S0, S2
FD5C6:  VMOV.F32        S2, #10.0
FD5CA:  VABS.F32        S0, S0
FD5CE:  VCMP.F32        S0, S2
FD5D2:  VMRS            APSR_nzcv, FPSCR
FD5D6:  BLE             loc_FD5EA
FD5D8:  MOV             R0, R4
FD5DA:  BL              sub_14B4F8
FD5DE:  VMOV            S0, R0
FD5E2:  MOVS            R0, #1
FD5E4:  VSTR            S0, [R4,#0x114]
FD5E8:  POP             {R4,R6,R7,PC}
FD5EA:  LDRB.W          R0, [R4,#0x11C]
FD5EE:  CMP             R0, #0
FD5F0:  IT NE
FD5F2:  MOVNE           R0, #1
FD5F4:  POP             {R4,R6,R7,PC}
