; =========================================================
; Game Engine Function: sub_172D4E
; Address            : 0x172D4E - 0x172DC0
; =========================================================

172D4E:  PUSH            {R4-R7,LR}
172D50:  ADD             R7, SP, #0xC
172D52:  PUSH.W          {R11}
172D56:  SUB             SP, SP, #8
172D58:  MOV             R4, R0
172D5A:  LDR             R0, [R0,#0x4C]
172D5C:  LDR             R2, [R4,#0x50]
172D5E:  STR             R1, [SP,#0x18+var_14]
172D60:  CMP             R0, R2
172D62:  BNE             loc_172DA2
172D64:  CMP             R0, #0
172D66:  ADD.W           R6, R0, #1
172D6A:  ITTE NE
172D6C:  ADDNE.W         R1, R0, R0,LSR#31
172D70:  ADDNE.W         R1, R0, R1,ASR#1
172D74:  MOVEQ           R1, #8
172D76:  CMP             R1, R6
172D78:  IT GT
172D7A:  MOVGT           R6, R1
172D7C:  CMP             R0, R6
172D7E:  BGE             loc_172DA2
172D80:  LSLS            R0, R6, #2
172D82:  BL              sub_1654B0
172D86:  LDR             R1, [R4,#0x54]; src
172D88:  MOV             R5, R0
172D8A:  CBZ             R1, loc_172D9C
172D8C:  LDR             R0, [R4,#0x4C]
172D8E:  LSLS            R2, R0, #2; n
172D90:  MOV             R0, R5; dest
172D92:  BLX             j_memcpy
172D96:  LDR             R0, [R4,#0x54]
172D98:  BL              sub_165578
172D9C:  LDR             R0, [R4,#0x4C]
172D9E:  STRD.W          R6, R5, [R4,#0x50]
172DA2:  LDR             R1, [R4,#0x54]
172DA4:  LDR             R2, [SP,#0x18+var_14]
172DA6:  STR.W           R2, [R1,R0,LSL#2]
172DAA:  LDR             R0, [R4,#0x4C]
172DAC:  ADDS            R0, #1
172DAE:  STR             R0, [R4,#0x4C]
172DB0:  MOV             R0, R4
172DB2:  ADD             SP, SP, #8
172DB4:  POP.W           {R11}
172DB8:  POP.W           {R4-R7,LR}
172DBC:  B.W             sub_172B7A
