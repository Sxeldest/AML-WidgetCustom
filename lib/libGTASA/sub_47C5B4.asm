; =========================================================
; Game Engine Function: sub_47C5B4
; Address            : 0x47C5B4 - 0x47C60A
; =========================================================

47C5B4:  PUSH            {R4-R7,LR}
47C5B6:  ADD             R7, SP, #0xC
47C5B8:  PUSH.W          {R8}
47C5BC:  LDR.W           R12, [R7,#arg_0]
47C5C0:  CMP.W           R12, #1
47C5C4:  BLT             loc_47C604
47C5C6:  LDR.W           LR, [R0,#0x5C]
47C5CA:  MOV             R5, R3
47C5CC:  MOV             R4, R2
47C5CE:  MOV             R8, R12
47C5D0:  ADDS            R3, R5, #4
47C5D2:  ADDS            R2, R4, #1
47C5D4:  SUB.W           R12, R8, #1
47C5D8:  CMP.W           LR, #0
47C5DC:  BEQ             loc_47C5FE
47C5DE:  LDR             R6, [R1]
47C5E0:  LDR             R5, [R5]
47C5E2:  LDR.W           R4, [R6,R4,LSL#2]
47C5E6:  ADDS            R5, #1
47C5E8:  MOV             R6, LR
47C5EA:  LDRB.W          R0, [R4],#1
47C5EE:  SUBS            R6, #1
47C5F0:  STRB            R0, [R5]
47C5F2:  STRB            R0, [R5,#1]
47C5F4:  STRB.W          R0, [R5,#-1]
47C5F8:  ADD.W           R5, R5, #4
47C5FC:  BNE             loc_47C5EA
47C5FE:  CMP.W           R8, #2
47C602:  BGE             loc_47C5CA
47C604:  POP.W           {R8}
47C608:  POP             {R4-R7,PC}
