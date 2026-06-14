; =========================================================
; Game Engine Function: sub_126C48
; Address            : 0x126C48 - 0x126D10
; =========================================================

126C48:  PUSH            {R4-R7,LR}
126C4A:  ADD             R7, SP, #0xC
126C4C:  PUSH.W          {R8}
126C50:  SUB             SP, SP, #8
126C52:  MOV             R4, R0
126C54:  LDR             R0, =(unk_313AA0 - 0x126C5C)
126C56:  MOV             R5, R1
126C58:  ADD             R0, PC; unk_313AA0
126C5A:  BL              sub_126D14
126C5E:  LDR             R1, [R0,#0xC]
126C60:  CMP             R1, #0
126C62:  BEQ             loc_126D00
126C64:  LDRSB.W         R1, [R4,#0x71C]
126C68:  MOV             R2, R0
126C6A:  LDR.W           R6, [R2,#8]!
126C6E:  MOV             R12, R5
126C70:  RSB.W           R1, R1, R1,LSL#3
126C74:  ADD.W           R1, R4, R1,LSL#2
126C78:  LDR.W           R1, [R1,#0x5A4]
126C7C:  STR             R1, [SP,#0x18+var_14]
126C7E:  CBZ             R6, loc_126CDC
126C80:  ADD.W           R8, R0, #4
126C84:  MOV             R0, R2
126C86:  LDR             R5, [R6,#0x10]
126C88:  MOV             R3, R6
126C8A:  CMP             R5, R1
126C8C:  IT LT
126C8E:  ADDLT           R3, #4
126C90:  LDR             R3, [R3]
126C92:  IT GE
126C94:  MOVGE           R0, R6
126C96:  CMP             R3, #0
126C98:  MOV             R6, R3
126C9A:  BNE             loc_126C86
126C9C:  CMP             R0, R2
126C9E:  BEQ             loc_126CDC
126CA0:  LDR             R0, [R0,#0x10]
126CA2:  CMP             R1, R0
126CA4:  BLT             loc_126CDC
126CA6:  ADD             R1, SP, #0x18+var_14
126CA8:  MOV             R0, R8
126CAA:  MOV             R5, R12
126CAC:  BL              sub_126D58
126CB0:  LDR             R0, [R0,#0x20]
126CB2:  MOV             R12, R5
126CB4:  ADDS            R0, #1
126CB6:  BEQ             loc_126CDC
126CB8:  ADD             R1, SP, #0x18+var_14
126CBA:  MOV             R0, R8
126CBC:  BL              sub_126D58
126CC0:  LDRSB.W         R2, [R4,#0x71C]
126CC4:  LDR             R1, [SP,#0x18+var_14]
126CC6:  LDR             R0, [R0,#0x20]
126CC8:  RSB.W           R3, R2, R2,LSL#3
126CCC:  ADD.W           R3, R4, R3,LSL#2
126CD0:  STR.W           R0, [R3,#0x5A4]
126CD4:  MOV             R0, R4
126CD6:  BL              sub_129E00
126CDA:  MOV             R12, R5
126CDC:  MOV             R0, R4
126CDE:  BLX             R12
126CE0:  LDRSB.W         R0, [R4,#0x71C]
126CE4:  LDR             R1, [SP,#0x18+var_14]
126CE6:  RSB.W           R0, R0, R0,LSL#3
126CEA:  ADD.W           R0, R4, R0,LSL#2
126CEE:  STR.W           R1, [R0,#0x5A4]
126CF2:  MOVS            R0, #0
126CF4:  BL              sub_129E64
126CF8:  ADD             SP, SP, #8
126CFA:  POP.W           {R8}
126CFE:  POP             {R4-R7,PC}
126D00:  MOV             R0, R4
126D02:  MOV             R1, R5
126D04:  ADD             SP, SP, #8
126D06:  POP.W           {R8}
126D0A:  POP.W           {R4-R7,LR}
126D0E:  BX              R1
