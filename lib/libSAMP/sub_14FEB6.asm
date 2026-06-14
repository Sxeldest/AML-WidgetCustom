; =========================================================
; Game Engine Function: sub_14FEB6
; Address            : 0x14FEB6 - 0x14FF40
; =========================================================

14FEB6:  PUSH            {R4-R7,LR}
14FEB8:  ADD             R7, SP, #0xC
14FEBA:  PUSH.W          {R8,R9,R11}
14FEBE:  MOV             R5, R0
14FEC0:  LSRS            R0, R1, #4
14FEC2:  CMP             R0, #0x7C ; '|'
14FEC4:  BHI             loc_14FEF4
14FEC6:  MOV             R0, R5
14FEC8:  MOV             R4, R1
14FECA:  BL              sub_F2396
14FECE:  CBZ             R0, loc_14FEF4
14FED0:  LDR.W           R0, [R5,R4,LSL#2]
14FED4:  CBZ             R0, loc_14FEF4
14FED6:  MOVW            R1, #0xEA60
14FEDA:  ADD.W           R9, R5, R1
14FEDE:  LDRD.W          R6, R2, [R9]
14FEE2:  CMP             R6, R2
14FEE4:  BEQ             loc_14FEFC
14FEE6:  LDR             R1, [R6]
14FEE8:  CMP             R1, R4
14FEEA:  BEQ             loc_14FEFC
14FEEC:  ADDS            R6, #4
14FEEE:  CMP             R6, R2
14FEF0:  BNE             loc_14FEE6
14FEF2:  B               loc_14FF1C
14FEF4:  MOVS            R0, #0
14FEF6:  POP.W           {R8,R9,R11}
14FEFA:  POP             {R4-R7,PC}
14FEFC:  CMP             R6, R2
14FEFE:  BEQ             loc_14FF1C
14FF00:  ADDS            R1, R6, #4; src
14FF02:  SUBS.W          R8, R2, R1
14FF06:  ITTT NE
14FF08:  MOVNE           R0, R6; dest
14FF0A:  MOVNE           R2, R8; n
14FF0C:  BLXNE           j_memmove
14FF10:  ADD.W           R0, R6, R8
14FF14:  STR.W           R0, [R9,#4]
14FF18:  LDR.W           R0, [R5,R4,LSL#2]
14FF1C:  ADDS            R1, R5, R4
14FF1E:  MOVW            R2, #0x9C40
14FF22:  MOVS            R6, #0
14FF24:  STRB            R6, [R1,R2]
14FF26:  CBZ             R0, loc_14FF2E
14FF28:  LDR             R1, [R0]
14FF2A:  LDR             R1, [R1,#4]
14FF2C:  BLX             R1
14FF2E:  ADD.W           R0, R5, R4,LSL#2
14FF32:  MOV.W           R1, #0x1F40
14FF36:  STR.W           R6, [R5,R4,LSL#2]
14FF3A:  STR             R6, [R0,R1]
14FF3C:  MOVS            R0, #1
14FF3E:  B               loc_14FEF6
