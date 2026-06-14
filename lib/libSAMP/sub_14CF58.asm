; =========================================================
; Game Engine Function: sub_14CF58
; Address            : 0x14CF58 - 0x14CFF4
; =========================================================

14CF58:  PUSH            {R7,LR}
14CF5A:  MOV             R7, SP
14CF5C:  SUB             SP, SP, #0x128
14CF5E:  LDRD.W          R1, R0, [R0]; src
14CF62:  MOVS            R3, #0
14CF64:  ASRS            R2, R0, #0x1F
14CF66:  ADD.W           R0, R0, R2,LSR#29
14CF6A:  MOVS            R2, #1
14CF6C:  ADD.W           R2, R2, R0,ASR#3; size
14CF70:  MOV             R0, SP; int
14CF72:  BL              sub_17D4F2
14CF76:  SUBS            R1, R7, #2; int
14CF78:  MOVS            R2, #0x10
14CF7A:  MOVS            R3, #1
14CF7C:  BL              sub_17D786
14CF80:  ADD             R1, SP, #0x130+var_10; int
14CF82:  MOV             R0, SP; int
14CF84:  MOVS            R2, #0x20 ; ' '
14CF86:  MOVS            R3, #1
14CF88:  BL              sub_17D786
14CF8C:  ADD             R1, SP, #0x130+var_14; int
14CF8E:  MOV             R0, SP; int
14CF90:  MOVS            R2, #0x20 ; ' '
14CF92:  MOVS            R3, #1
14CF94:  BL              sub_17D786
14CF98:  ADD             R1, SP, #0x130+var_18; int
14CF9A:  MOV             R0, SP; int
14CF9C:  MOVS            R2, #0x20 ; ' '
14CF9E:  MOVS            R3, #1
14CFA0:  BL              sub_17D786
14CFA4:  ADD             R1, SP, #0x130+var_1C; int
14CFA6:  MOV             R0, SP; int
14CFA8:  MOVS            R2, #0x20 ; ' '
14CFAA:  MOVS            R3, #1
14CFAC:  BL              sub_17D786
14CFB0:  LDR             R0, =(off_23496C - 0x14CFB6)
14CFB2:  ADD             R0, PC; off_23496C
14CFB4:  LDR             R0, [R0]; dword_23DEF4
14CFB6:  LDR             R0, [R0]
14CFB8:  LDR.W           R0, [R0,#0x3B0]
14CFBC:  LDR             R0, [R0,#0x10]
14CFBE:  CBZ             R0, loc_14CFEA
14CFC0:  LDRH.W          R1, [R7,#-2]
14CFC4:  CMP.W           R1, #0x3E8
14CFC8:  BHI             loc_14CFEA
14CFCA:  ADDS            R2, R0, R1
14CFCC:  LDRB            R2, [R2,#4]
14CFCE:  CBZ             R2, loc_14CFEA
14CFD0:  ADD.W           R0, R0, R1,LSL#2
14CFD4:  LDR.W           R0, [R0,#0x3EC]
14CFD8:  CBZ             R0, loc_14CFEA
14CFDA:  LDR.W           R12, [R0]
14CFDE:  LDR             R1, [SP,#0x130+var_10]
14CFE0:  LDRD.W          R3, R2, [SP,#0x130+var_18]
14CFE4:  LDR.W           R12, [R12,#0x10]
14CFE8:  BLX             R12
14CFEA:  MOV             R0, SP
14CFEC:  BL              sub_17D542
14CFF0:  ADD             SP, SP, #0x128
14CFF2:  POP             {R7,PC}
