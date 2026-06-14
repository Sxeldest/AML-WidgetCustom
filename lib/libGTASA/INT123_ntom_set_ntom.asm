; =========================================================
; Game Engine Function: INT123_ntom_set_ntom
; Address            : 0x226A08 - 0x226A8E
; =========================================================

226A08:  PUSH            {R4-R7,LR}
226A0A:  ADD             R7, SP, #0xC
226A0C:  PUSH.W          {R11}
226A10:  CMP             R1, #1
226A12:  BLT             loc_226A78
226A14:  MOVW            R2, #0x9190
226A18:  MOVW            R5, #0x7FFF
226A1C:  LDR.W           R12, [R0,R2]
226A20:  MOVW            R2, #0x92D8
226A24:  LDR             R3, [R0,R2]
226A26:  MOVW            R2, #0x92CC
226A2A:  ADD.W           LR, R0, R2
226A2E:  MOVW            R2, #0x92C8
226A32:  ADDS            R4, R0, R2
226A34:  MOV.W           R2, #0x4000
226A38:  CMP             R3, #1
226A3A:  BEQ             loc_226A46
226A3C:  CMP             R3, #2
226A3E:  BNE             loc_226A4C
226A40:  MOV.W           R6, #0x480
226A44:  B               loc_226A5E
226A46:  MOV.W           R6, #0x180
226A4A:  B               loc_226A5E
226A4C:  LDR             R6, [R4]
226A4E:  CMP             R6, #0
226A50:  ITT EQ
226A52:  LDREQ.W         R6, [LR]
226A56:  CMPEQ           R6, #0
226A58:  BEQ             loc_226A40
226A5A:  MOV.W           R6, #0x240
226A5E:  MLA.W           R2, R6, R12, R2
226A62:  SUBS            R1, #1
226A64:  MOV.W           R6, R2,ASR#31
226A68:  ADD.W           R6, R2, R6,LSR#17
226A6C:  BIC.W           R6, R6, R5
226A70:  SUB.W           R2, R2, R6
226A74:  BNE             loc_226A38
226A76:  B               loc_226A7C
226A78:  MOV.W           R2, #0x4000
226A7C:  MOVW            R1, #0x918C
226A80:  STR             R2, [R0,R1]
226A82:  MOVW            R1, #0x9188
226A86:  STR             R2, [R0,R1]
226A88:  POP.W           {R11}
226A8C:  POP             {R4-R7,PC}
