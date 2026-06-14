; =========================================================
; Game Engine Function: sub_9CF78
; Address            : 0x9CF78 - 0x9D106
; =========================================================

9CF78:  PUSH            {R4-R7,LR}
9CF7A:  ADD             R7, SP, #0xC
9CF7C:  PUSH.W          {R8-R11}
9CF80:  SUB             SP, SP, #4
9CF82:  VPUSH           {D8-D11}
9CF86:  SUB             SP, SP, #0x10
9CF88:  VMOV            S16, R2
9CF8C:  MOV             R4, R0
9CF8E:  LDR             R0, [R0,#0x58]
9CF90:  MOV             R11, R1
9CF92:  VCMP.F32        S16, #0.0
9CF96:  VMRS            APSR_nzcv, FPSCR
9CF9A:  BNE             loc_9D004
9CF9C:  LDR             R1, [R4,#0x5C]
9CF9E:  CMP             R0, R1
9CFA0:  BNE             loc_9CFE0
9CFA2:  CMP             R0, #0
9CFA4:  ADD.W           R5, R0, #1
9CFA8:  ITTE NE
9CFAA:  ADDNE.W         R1, R0, R0,LSR#31
9CFAE:  ADDNE.W         R1, R0, R1,ASR#1
9CFB2:  MOVEQ           R1, #8
9CFB4:  CMP             R1, R5
9CFB6:  IT GT
9CFB8:  MOVGT           R5, R1
9CFBA:  CMP             R0, R5
9CFBC:  BGE             loc_9CFE0
9CFBE:  LSLS            R0, R5, #3
9CFC0:  BL              sub_885E4
9CFC4:  LDR             R1, [R4,#0x60]; src
9CFC6:  MOV             R6, R0
9CFC8:  CBZ             R1, loc_9CFDA
9CFCA:  LDR             R0, [R4,#0x58]
9CFCC:  LSLS            R2, R0, #3; n
9CFCE:  MOV             R0, R6; dest
9CFD0:  BLX             j_memcpy
9CFD4:  LDR             R0, [R4,#0x60]
9CFD6:  BL              sub_88614
9CFDA:  LDR             R0, [R4,#0x58]
9CFDC:  STRD.W          R5, R6, [R4,#0x5C]
9CFE0:  LDR             R1, [R4,#0x60]
9CFE2:  LDRD.W          R2, R3, [R11]
9CFE6:  STR.W           R2, [R1,R0,LSL#3]
9CFEA:  ADD.W           R0, R1, R0,LSL#3
9CFEE:  STR             R3, [R0,#4]
9CFF0:  LDR             R0, [R4,#0x58]
9CFF2:  ADDS            R0, #1
9CFF4:  STR             R0, [R4,#0x58]
9CFF6:  ADD             SP, SP, #0x10
9CFF8:  VPOP            {D8-D11}
9CFFC:  ADD             SP, SP, #4
9CFFE:  POP.W           {R8-R11}
9D002:  POP             {R4-R7,PC}
9D004:  LDR             R1, [R7,#arg_4]
9D006:  MOV             R5, R3
9D008:  LDR.W           R10, [R4,#0x5C]
9D00C:  ADD             R0, R1
9D00E:  ADDS            R6, R0, #1
9D010:  CMP             R10, R6
9D012:  BGE             loc_9D036
9D014:  LSLS            R0, R6, #3
9D016:  BL              sub_885E4
9D01A:  LDR             R1, [R4,#0x60]; src
9D01C:  MOV             R8, R0
9D01E:  CBZ             R1, loc_9D030
9D020:  LDR             R0, [R4,#0x58]
9D022:  LSLS            R2, R0, #3; n
9D024:  MOV             R0, R8; dest
9D026:  BLX             j_memcpy
9D02A:  LDR             R0, [R4,#0x60]
9D02C:  BL              sub_88614
9D030:  MOV             R10, R6
9D032:  STRD.W          R6, R8, [R4,#0x5C]
9D036:  LDR             R0, [R7,#arg_4]
9D038:  CMP             R0, #0
9D03A:  BMI             loc_9CFF6
9D03C:  LDR             R0, [R7,#arg_4]
9D03E:  VMOV            S18, R5
9D042:  VLDR            S0, [R7,#arg_0]
9D046:  MOVS            R5, #0
9D048:  LDR             R6, [R4,#0x58]
9D04A:  MOV             R9, SP
9D04C:  VSUB.F32        S20, S0, S18
9D050:  VMOV            S0, R0
9D054:  VCVT.F32.S32    S22, S0
9D058:  VMOV            S0, R5
9D05C:  ADD             R1, SP, #0x50+var_4C
9D05E:  VMOV.F32        S2, S18
9D062:  MOV             R2, R9
9D064:  VCVT.F32.S32    S0, S0
9D068:  VDIV.F32        S0, S0, S22
9D06C:  VMLA.F32        S2, S0, S20
9D070:  VMOV            R0, S2
9D074:  BLX             sincosf
9D078:  VLDR            S0, [SP,#0x50+var_4C]
9D07C:  CMP             R6, R10
9D07E:  VLDR            S6, [SP,#0x50+var_50]
9D082:  VLDR            S2, [R11]
9D086:  VLDR            S4, [R11,#4]
9D08A:  VMLA.F32        S2, S6, S16
9D08E:  VMLA.F32        S4, S0, S16
9D092:  VSTR            S2, [SP,#0x50+var_48]
9D096:  VSTR            S4, [SP,#0x50+var_44]
9D09A:  BNE             loc_9D0E0
9D09C:  CMP.W           R10, #0
9D0A0:  ADD.W           R8, R10, #1
9D0A4:  ITTE NE
9D0A6:  ADDNE.W         R0, R10, R10,LSR#31
9D0AA:  ADDNE.W         R0, R10, R0,ASR#1
9D0AE:  MOVEQ           R0, #8
9D0B0:  CMP             R0, R8
9D0B2:  IT GT
9D0B4:  MOVGT           R8, R0
9D0B6:  CMP             R10, R8
9D0B8:  MOV             R6, R10
9D0BA:  BGE             loc_9D0E0
9D0BC:  MOV.W           R0, R8,LSL#3
9D0C0:  BL              sub_885E4
9D0C4:  LDR             R1, [R4,#0x60]; src
9D0C6:  MOV             R10, R0
9D0C8:  CBZ             R1, loc_9D0DA
9D0CA:  LDR             R0, [R4,#0x58]
9D0CC:  LSLS            R2, R0, #3; n
9D0CE:  MOV             R0, R10; dest
9D0D0:  BLX             j_memcpy
9D0D4:  LDR             R0, [R4,#0x60]
9D0D6:  BL              sub_88614
9D0DA:  LDR             R6, [R4,#0x58]
9D0DC:  STRD.W          R8, R10, [R4,#0x5C]
9D0E0:  LDR             R0, [R4,#0x60]
9D0E2:  LDRD.W          R1, R2, [SP,#0x50+var_48]
9D0E6:  STR.W           R1, [R0,R6,LSL#3]
9D0EA:  ADD.W           R0, R0, R6,LSL#3
9D0EE:  STR             R2, [R0,#4]
9D0F0:  LDR             R0, [R4,#0x58]
9D0F2:  ADDS            R6, R0, #1
9D0F4:  LDR             R0, [R7,#arg_4]
9D0F6:  STR             R6, [R4,#0x58]
9D0F8:  CMP             R0, R5
9D0FA:  BEQ.W           loc_9CFF6
9D0FE:  LDR.W           R10, [R4,#0x5C]
9D102:  ADDS            R5, #1
9D104:  B               loc_9D058
