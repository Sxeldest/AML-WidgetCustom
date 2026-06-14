; =========================================================
; Game Engine Function: sub_18CF2C
; Address            : 0x18CF2C - 0x18CFA2
; =========================================================

18CF2C:  PUSH            {R4-R7,LR}
18CF2E:  ADD             R7, SP, #0xC
18CF30:  PUSH.W          {R11}
18CF34:  SUB             SP, SP, #0x10
18CF36:  MOV             R4, R0
18CF38:  LDRB            R0, [R0,#0x14]
18CF3A:  MOV             R6, R2
18CF3C:  MOV             R5, R1
18CF3E:  CBZ             R0, loc_18CF56
18CF40:  LDR             R0, [R4,#0x10]
18CF42:  LDR             R1, [R5]
18CF44:  CMP             R1, R0
18CF46:  BNE             loc_18CF56
18CF48:  LDR             R1, [R4,#0xC]
18CF4A:  LDR             R0, [R4]
18CF4C:  LDR             R2, [R6]
18CF4E:  ADD.W           R0, R0, R1,LSL#3
18CF52:  STR             R2, [R0,#4]
18CF54:  B               loc_18CF9A
18CF56:  SUB.W           R2, R7, #-var_11
18CF5A:  MOV             R0, R4
18CF5C:  MOV             R1, R5
18CF5E:  BL              sub_18D136
18CF62:  LDRB.W          R1, [R7,#var_11]
18CF66:  CBZ             R1, loc_18CF7E
18CF68:  MOVS            R2, #1
18CF6A:  STR             R0, [R4,#0xC]
18CF6C:  STRB            R2, [R4,#0x14]
18CF6E:  LDR             R2, [R4]
18CF70:  LDR             R3, [R5]
18CF72:  ADD.W           R0, R2, R0,LSL#3
18CF76:  LDR             R1, [R6]
18CF78:  STR             R3, [R4,#0x10]
18CF7A:  STR             R1, [R0,#4]
18CF7C:  B               loc_18CF9A
18CF7E:  LDR             R0, [R6]
18CF80:  ADD             R2, SP, #0x20+var_1C
18CF82:  LDR             R1, [R5]
18CF84:  STRD.W          R1, R0, [SP,#0x20+var_1C]
18CF88:  MOV             R0, R4
18CF8A:  MOV             R1, R5
18CF8C:  BL              sub_18D180
18CF90:  STR             R0, [R4,#0xC]
18CF92:  MOVS            R1, #1
18CF94:  LDR             R0, [R5]
18CF96:  STRB            R1, [R4,#0x14]
18CF98:  STR             R0, [R4,#0x10]
18CF9A:  ADD             SP, SP, #0x10
18CF9C:  POP.W           {R11}
18CFA0:  POP             {R4-R7,PC}
