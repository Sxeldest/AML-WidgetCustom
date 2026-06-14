; =========================================================
; Game Engine Function: sub_142B24
; Address            : 0x142B24 - 0x142B98
; =========================================================

142B24:  PUSH            {R4,R6,R7,LR}
142B26:  ADD             R7, SP, #8
142B28:  SUB             SP, SP, #0x138
142B2A:  LDR             R2, [R1,#0xC]; size
142B2C:  MOV             R4, R0
142B2E:  LDR             R1, [R1,#0x14]; src
142B30:  ADD             R0, SP, #0x140+var_11C; int
142B32:  MOVS            R3, #0
142B34:  BL              sub_17D4F2
142B38:  LDR.W           R0, [R4,#0x218]
142B3C:  CMP             R0, #5
142B3E:  BNE             loc_142B8E
142B40:  ADD             R0, SP, #0x140+var_11C; int
142B42:  ADD.W           R1, SP, #0x140+var_11D; int
142B46:  MOVS            R2, #8
142B48:  MOVS            R3, #1
142B4A:  BL              sub_17D786
142B4E:  ADD             R0, SP, #0x140+var_11C; int
142B50:  ADD             R1, SP, #0x140+var_120; int
142B52:  MOVS            R2, #0x10
142B54:  MOVS            R3, #1
142B56:  BL              sub_17D786
142B5A:  ADD             R0, SP, #0x140+var_11C; int
142B5C:  MOV             R1, SP; dest
142B5E:  MOVS            R2, #0x1F
142B60:  BL              sub_17D744
142B64:  LDRH.W          R0, [SP,#0x140+var_120]
142B68:  CMP.W           R0, #0x3EC
142B6C:  BHI             loc_142B8E
142B6E:  LDR.W           R1, [R4,#0x3B0]
142B72:  LDR             R1, [R1]
142B74:  ADDS            R2, R1, R0
142B76:  LDRB.W          R2, [R2,#0xFB4]
142B7A:  CBZ             R2, loc_142B8E
142B7C:  ADD.W           R0, R1, R0,LSL#2
142B80:  LDR             R0, [R0,#4]
142B82:  CBZ             R0, loc_142B8E
142B84:  LDR             R0, [R0]
142B86:  CBZ             R0, loc_142B8E
142B88:  MOV             R1, SP
142B8A:  BL              sub_14AAD8
142B8E:  ADD             R0, SP, #0x140+var_11C
142B90:  BL              sub_17D542
142B94:  ADD             SP, SP, #0x138
142B96:  POP             {R4,R6,R7,PC}
