; =========================================================
; Game Engine Function: sub_144AF8
; Address            : 0x144AF8 - 0x144B7A
; =========================================================

144AF8:  PUSH            {R4,R5,R7,LR}
144AFA:  ADD             R7, SP, #8
144AFC:  SUB             SP, SP, #0x120
144AFE:  CMP             R1, #2
144B00:  BHI             loc_144B76
144B02:  MOV             R4, R0
144B04:  LDR.W           R0, [R0,#0x218]
144B08:  CMP             R0, #5
144B0A:  BNE             loc_144B76
144B0C:  LDR.W           R0, [R4,#0x20C]
144B10:  MOV             R5, R1
144B12:  LDRB.W          R1, [R0,#0x48]
144B16:  CMP             R1, R5
144B18:  BEQ             loc_144B76
144B1A:  STRB.W          R5, [R0,#0x48]
144B1E:  ADD             R0, SP, #0x128+var_120
144B20:  BL              sub_17D4A8
144B24:  MOVS            R1, #0xDC
144B26:  STRB.W          R1, [R7,#var_9]
144B2A:  SUB.W           R1, R7, #-var_9
144B2E:  MOVS            R2, #8
144B30:  MOVS            R3, #1
144B32:  BL              sub_17D628
144B36:  MOVS            R0, #0x4E ; 'N'
144B38:  STRB.W          R0, [R7,#var_9]
144B3C:  ADD             R0, SP, #0x128+var_120
144B3E:  SUB.W           R1, R7, #-var_9
144B42:  MOVS            R2, #8
144B44:  MOVS            R3, #1
144B46:  BL              sub_17D628
144B4A:  STRB.W          R5, [R7,#var_9]
144B4E:  ADD             R0, SP, #0x128+var_120
144B50:  SUB.W           R1, R7, #-var_9
144B54:  MOVS            R2, #8
144B56:  MOVS            R3, #1
144B58:  BL              sub_17D628
144B5C:  LDR.W           R0, [R4,#0x210]
144B60:  LDR             R1, [R0]
144B62:  LDR             R5, [R1,#0x20]
144B64:  MOVS            R1, #6
144B66:  MOVS            R2, #2
144B68:  STR             R1, [SP,#0x128+var_128]
144B6A:  ADD             R1, SP, #0x128+var_120
144B6C:  MOVS            R3, #9
144B6E:  BLX             R5
144B70:  ADD             R0, SP, #0x128+var_120
144B72:  BL              sub_17D542
144B76:  ADD             SP, SP, #0x120
144B78:  POP             {R4,R5,R7,PC}
