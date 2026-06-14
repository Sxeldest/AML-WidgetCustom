; =========================================================
; Game Engine Function: sub_FEE00
; Address            : 0xFEE00 - 0xFEF00
; =========================================================

FEE00:  PUSH            {R4-R7,LR}
FEE02:  ADD             R7, SP, #0xC
FEE04:  PUSH.W          {R8-R10}
FEE08:  MOV             R9, R0
FEE0A:  LDR             R0, =(byte_25AEDC - 0xFEE10)
FEE0C:  ADD             R0, PC; byte_25AEDC
FEE0E:  LDRB            R0, [R0]
FEE10:  DMB.W           ISH
FEE14:  LSLS            R0, R0, #0x1F
FEE16:  BEQ             loc_FEED2
FEE18:  LDR.W           R0, [R9]
FEE1C:  LDR.W           R8, [R0,#0x2C]
FEE20:  BL              sub_1082E4
FEE24:  MOV             R5, R0
FEE26:  CBZ             R0, loc_FEE4E
FEE28:  BL              sub_1082E4
FEE2C:  LDR.W           R0, [R0,#0x590]
FEE30:  MOV.W           R10, #0
FEE34:  CBZ             R0, loc_FEE52
FEE36:  BL              sub_1082E4
FEE3A:  LDR.W           R4, [R0,#0x590]
FEE3E:  LDR.W           R6, [R4,#0x464]
FEE42:  BL              sub_1082E4
FEE46:  CMP             R6, R0
FEE48:  IT EQ
FEE4A:  MOVEQ           R10, R4
FEE4C:  B               loc_FEE52
FEE4E:  MOV.W           R10, #0
FEE52:  CMP             R5, R9
FEE54:  IT NE
FEE56:  CMPNE           R10, R9
FEE58:  BNE             loc_FEE72
FEE5A:  MOV             R0, R9
FEE5C:  BL              sub_128FEC
FEE60:  MOV             R0, R9
FEE62:  BLX             R8
FEE64:  MOV             R0, R9
FEE66:  POP.W           {R8-R10}
FEE6A:  POP.W           {R4-R7,LR}
FEE6E:  B.W             sub_1290E0
FEE72:  LDR             R5, =(dword_25AED8 - 0xFEE7A)
FEE74:  MOVS            R6, #0
FEE76:  ADD             R5, PC; dword_25AED8
FEE78:  LDR             R1, [R5]
FEE7A:  LDR             R4, =(unk_25AEE0 - 0xFEE80)
FEE7C:  ADD             R4, PC; unk_25AEE0
FEE7E:  LDR.W           R0, [R1,R6,LSL#2]
FEE82:  CBZ             R0, loc_FEE8C
FEE84:  BL              sub_163C02
FEE88:  LDR             R1, [R5]
FEE8A:  STRB            R0, [R4,R6]
FEE8C:  ADDS            R6, #1
FEE8E:  CMP             R6, #0xBE
FEE90:  BNE             loc_FEE7E
FEE92:  MOV             R0, R9
FEE94:  BL              sub_128FEC
FEE98:  MOV             R0, R9
FEE9A:  BLX             R8
FEE9C:  MOV             R0, R9
FEE9E:  BL              sub_1290E0
FEEA2:  MOVS            R6, #0
FEEA4:  LDR             R0, [R5]
FEEA6:  LDR.W           R0, [R0,R6,LSL#2]
FEEAA:  CBZ             R0, loc_FEEC6
FEEAC:  LDRB            R1, [R4,R6]
FEEAE:  BL              sub_163C08
FEEB2:  CMP.W           R10, #0
FEEB6:  BEQ             loc_FEEC6
FEEB8:  CMP             R6, #0x1F
FEEBA:  BNE             loc_FEEC6
FEEBC:  LDR             R0, [R5]
FEEBE:  MOVS            R1, #0
FEEC0:  LDR             R0, [R0,#0x7C]
FEEC2:  BL              sub_163C08
FEEC6:  ADDS            R6, #1
FEEC8:  CMP             R6, #0xBE
FEECA:  BNE             loc_FEEA4
FEECC:  POP.W           {R8-R10}
FEED0:  POP             {R4-R7,PC}
FEED2:  LDR             R0, =(byte_25AEDC - 0xFEED8)
FEED4:  ADD             R0, PC; byte_25AEDC ; __guard *
FEED6:  BLX             j___cxa_guard_acquire
FEEDA:  CMP             R0, #0
FEEDC:  BEQ             loc_FEE18
FEEDE:  LDR             R0, =(off_23494C - 0xFEEEE)
FEEE0:  MOVW            R3, #0x3794
FEEE4:  LDR             R2, =(dword_25AED8 - 0xFEEF0)
FEEE6:  MOVT            R3, #0x6F ; 'o'
FEEEA:  ADD             R0, PC; off_23494C
FEEEC:  ADD             R2, PC; dword_25AED8
FEEEE:  LDR             R1, [R0]; dword_23DF24
FEEF0:  LDR             R0, =(byte_25AEDC - 0xFEEF8)
FEEF2:  LDR             R1, [R1]
FEEF4:  ADD             R0, PC; byte_25AEDC ; __guard *
FEEF6:  ADD             R1, R3
FEEF8:  STR             R1, [R2]
FEEFA:  BLX             j___cxa_guard_release
FEEFE:  B               loc_FEE18
