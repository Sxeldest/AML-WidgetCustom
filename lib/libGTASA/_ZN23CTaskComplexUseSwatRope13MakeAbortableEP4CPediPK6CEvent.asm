; =========================================================
; Game Engine Function: _ZN23CTaskComplexUseSwatRope13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x511BC8 - 0x511C8A
; =========================================================

511BC8:  PUSH            {R4-R7,LR}
511BCA:  ADD             R7, SP, #0xC
511BCC:  PUSH.W          {R8,R9,R11}
511BD0:  MOV             R9, R2
511BD2:  MOV             R5, R3
511BD4:  MOV             R4, R1
511BD6:  MOV             R8, R0
511BD8:  CMP.W           R9, #2
511BDC:  BEQ             loc_511C48
511BDE:  LDR             R0, [R5]
511BE0:  LDR             R1, [R0,#8]
511BE2:  MOV             R0, R5
511BE4:  BLX             R1
511BE6:  CMP             R0, #0xA
511BE8:  BEQ             loc_511C48
511BEA:  LDR             R0, [R5]
511BEC:  LDR             R1, [R0,#8]
511BEE:  MOV             R0, R5
511BF0:  BLX             R1
511BF2:  CMP             R0, #0x34 ; '4'
511BF4:  BEQ             loc_511C48
511BF6:  LDR             R0, [R5]
511BF8:  LDR             R1, [R0,#8]
511BFA:  MOV             R0, R5
511BFC:  BLX             R1
511BFE:  CMP             R0, #0x3A ; ':'
511C00:  BEQ             loc_511C48
511C02:  LDR             R0, [R5]
511C04:  LDR             R1, [R0,#8]
511C06:  MOV             R0, R5
511C08:  BLX             R1
511C0A:  CMP             R0, #0x42 ; 'B'
511C0C:  BEQ             loc_511C48
511C0E:  LDR             R0, [R5]
511C10:  LDR             R1, [R0,#8]
511C12:  MOV             R0, R5
511C14:  BLX             R1
511C16:  CMP             R0, #0x40 ; '@'
511C18:  BEQ             loc_511C48
511C1A:  LDR             R0, [R5]
511C1C:  LDR             R1, [R0,#8]
511C1E:  MOV             R0, R5
511C20:  BLX             R1
511C22:  CMP             R0, #0x49 ; 'I'
511C24:  BEQ             loc_511C48
511C26:  LDR             R0, [R5]
511C28:  LDR             R1, [R0,#8]
511C2A:  MOV             R0, R5
511C2C:  BLX             R1
511C2E:  CMP             R0, #0x29 ; ')'
511C30:  BEQ             loc_511C48
511C32:  VMOV.F32        S0, #20.0
511C36:  ADDW            R0, R4, #0x544
511C3A:  VLDR            S2, [R0]
511C3E:  VCMPE.F32       S2, S0
511C42:  VMRS            APSR_nzcv, FPSCR
511C46:  BGE             loc_511C82
511C48:  LDR.W           R0, [R8,#8]
511C4C:  MOV             R2, R9
511C4E:  MOV             R3, R5
511C50:  LDR             R1, [R0]
511C52:  LDR             R6, [R1,#0x1C]
511C54:  MOV             R1, R4
511C56:  BLX             R6
511C58:  MOV             R1, R0
511C5A:  MOVS            R0, #0
511C5C:  CMP             R1, #1
511C5E:  BNE             loc_511C7C
511C60:  LDR.W           R1, [R4,#0x484]
511C64:  LDR             R2, [R4,#0x1C]
511C66:  STRD.W          R0, R0, [R4,#0x48]
511C6A:  STR             R0, [R4,#0x50]
511C6C:  BIC.W           R0, R1, #1
511C70:  STR.W           R0, [R4,#0x484]
511C74:  ORR.W           R0, R2, #1
511C78:  STR             R0, [R4,#0x1C]
511C7A:  MOVS            R0, #1
511C7C:  POP.W           {R8,R9,R11}
511C80:  POP             {R4-R7,PC}
511C82:  MOVS            R0, #0
511C84:  POP.W           {R8,R9,R11}
511C88:  POP             {R4-R7,PC}
