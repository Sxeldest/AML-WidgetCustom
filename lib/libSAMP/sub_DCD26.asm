; =========================================================
; Game Engine Function: sub_DCD26
; Address            : 0xDCD26 - 0xDCD9A
; =========================================================

DCD26:  PUSH            {R4,R6,R7,LR}
DCD28:  ADD             R7, SP, #8
DCD2A:  LDRD.W          R12, R4, [R1]
DCD2E:  MOV.W           LR, #0
DCD32:  CMP.W           R4, #0xFFFFFFFF
DCD36:  STR.W           LR, [R0,#8]
DCD3A:  BLE             loc_DCD80
DCD3C:  CMP             R2, #0xE
DCD3E:  BGT             locret_DCD7E
DCD40:  MOVS            R3, #0x20 ; ' '
DCD42:  SUB.W           LR, R3, R2,LSL#2
DCD46:  LSLS            R3, R2, #2
DCD48:  LSR.W           R12, R12, R3
DCD4C:  LSL.W           R3, R4, LR
DCD50:  ORR.W           R12, R12, R3
DCD54:  MOV             R3, #0xFFFFFFE0
DCD58:  ADD.W           R3, R3, R2,LSL#2
DCD5C:  CMP             R3, #0
DCD5E:  IT PL
DCD60:  LSRPL.W         R12, R4, R3
DCD64:  ANDS.W          R3, R12, #0xF
DCD68:  STR             R3, [R0,#8]
DCD6A:  ITTTT NE
DCD6C:  LDRNE           R1, [R1,#8]
DCD6E:  LDRNE.W         R3, [R1,R2,LSL#3]
DCD72:  ADDNE.W         R1, R1, R2,LSL#3
DCD76:  LDRNE           R1, [R1,#4]
DCD78:  IT NE
DCD7A:  STRDNE.W        R3, R1, [R0]
DCD7E:  POP             {R4,R6,R7,PC}
DCD80:  CMP             R12, R2
DCD82:  IT LE
DCD84:  POPLE           {R4,R6,R7,PC}
DCD86:  LDR             R1, [R1,#8]
DCD88:  ADD.W           R1, R1, R2,LSL#4
DCD8C:  VLDR            D16, [R1]
DCD90:  LDR             R1, [R1,#8]
DCD92:  STR             R1, [R0,#8]
DCD94:  VSTR            D16, [R0]
DCD98:  POP             {R4,R6,R7,PC}
