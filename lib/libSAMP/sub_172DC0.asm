; =========================================================
; Game Engine Function: sub_172DC0
; Address            : 0x172DC0 - 0x172EB6
; =========================================================

172DC0:  PUSH            {R4-R7,LR}
172DC2:  ADD             R7, SP, #0xC
172DC4:  PUSH.W          {R8-R10}
172DC8:  MOV             R4, R0
172DCA:  LDR             R0, [R0,#0x34]
172DCC:  MOV             R6, R2
172DCE:  MOV             R8, R1
172DD0:  ADD             R0, R2
172DD2:  CMP.W           R0, #0x10000
172DD6:  BCC             loc_172DEE
172DD8:  LDRB.W          R0, [R4,#0x24]
172DDC:  LSLS            R0, R0, #0x1D
172DDE:  BPL             loc_172DEE
172DE0:  LDR             R0, [R4,#0x18]
172DE2:  MOVS            R1, #0
172DE4:  STRD.W          R0, R1, [R4,#0x30]
172DE8:  MOV             R0, R4
172DEA:  BL              sub_1729EA
172DEE:  LDR             R1, [R4]
172DF0:  LDR             R2, [R4,#8]
172DF2:  LDRD.W          R9, R0, [R4,#0x18]
172DF6:  ADD.W           R1, R1, R1,LSL#2
172DFA:  ADD.W           R5, R9, R6
172DFE:  ADD.W           R1, R2, R1,LSL#3
172E02:  CMP             R0, R5
172E04:  LDR.W           R2, [R1,#-0x28]
172E08:  ADD             R2, R8
172E0A:  STR.W           R2, [R1,#-0x28]
172E0E:  BGE             loc_172E52
172E10:  CMP             R0, #0
172E12:  ITTE NE
172E14:  ADDNE.W         R1, R0, R0,LSR#31
172E18:  ADDNE.W         R1, R0, R1,ASR#1
172E1C:  MOVEQ           R1, #8
172E1E:  CMP             R1, R5
172E20:  MOV             R6, R5
172E22:  IT GT
172E24:  MOVGT           R6, R1
172E26:  CMP             R0, R6
172E28:  BGE             loc_172E52
172E2A:  ADD.W           R0, R6, R6,LSL#2
172E2E:  LSLS            R0, R0, #2
172E30:  BL              sub_1654B0
172E34:  LDR             R1, [R4,#0x20]; src
172E36:  MOV             R10, R0
172E38:  CBZ             R1, loc_172E4E
172E3A:  LDR             R0, [R4,#0x18]
172E3C:  ADD.W           R0, R0, R0,LSL#2
172E40:  LSLS            R2, R0, #2; n
172E42:  MOV             R0, R10; dest
172E44:  BLX             j_memcpy
172E48:  LDR             R0, [R4,#0x20]
172E4A:  BL              sub_165578
172E4E:  STRD.W          R6, R10, [R4,#0x1C]
172E52:  LDRD.W          R10, R0, [R4,#0xC]
172E56:  ADD.W           R2, R9, R9,LSL#2
172E5A:  LDR             R1, [R4,#0x20]
172E5C:  STR             R5, [R4,#0x18]
172E5E:  ADD.W           R5, R10, R8
172E62:  CMP             R0, R5
172E64:  ADD.W           R1, R1, R2,LSL#2
172E68:  STR             R1, [R4,#0x38]
172E6A:  BGE             loc_172EA6
172E6C:  CMP             R0, #0
172E6E:  ITTE NE
172E70:  ADDNE.W         R1, R0, R0,LSR#31
172E74:  ADDNE.W         R1, R0, R1,ASR#1
172E78:  MOVEQ           R1, #8
172E7A:  CMP             R1, R5
172E7C:  MOV             R6, R5
172E7E:  IT GT
172E80:  MOVGT           R6, R1
172E82:  CMP             R0, R6
172E84:  BGE             loc_172EA6
172E86:  LSLS            R0, R6, #1
172E88:  BL              sub_1654B0
172E8C:  LDR             R1, [R4,#0x14]; src
172E8E:  MOV             R8, R0
172E90:  CBZ             R1, loc_172EA2
172E92:  LDR             R0, [R4,#0xC]
172E94:  LSLS            R2, R0, #1; n
172E96:  MOV             R0, R8; dest
172E98:  BLX             j_memcpy
172E9C:  LDR             R0, [R4,#0x14]
172E9E:  BL              sub_165578
172EA2:  STRD.W          R6, R8, [R4,#0x10]
172EA6:  LDR             R0, [R4,#0x14]
172EA8:  STR             R5, [R4,#0xC]
172EAA:  ADD.W           R0, R0, R10,LSL#1
172EAE:  STR             R0, [R4,#0x3C]
172EB0:  POP.W           {R8-R10}
172EB4:  POP             {R4-R7,PC}
