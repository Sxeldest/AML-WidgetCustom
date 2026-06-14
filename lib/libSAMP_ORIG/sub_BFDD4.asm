; =========================================================
; Game Engine Function: sub_BFDD4
; Address            : 0xBFDD4 - 0xBFEB0
; =========================================================

BFDD4:  PUSH            {R4-R7,LR}
BFDD6:  ADD             R7, SP, #0xC
BFDD8:  PUSH.W          {R8-R11}
BFDDC:  SUB             SP, SP, #0xC
BFDDE:  LDR             R6, =(__stack_chk_guard_ptr - 0xBFDE8)
BFDE0:  MUL.W           R5, R1, R2
BFDE4:  ADD             R6, PC; __stack_chk_guard_ptr
BFDE6:  LDR             R6, [R6]; __stack_chk_guard
BFDE8:  LDR             R6, [R6]
BFDEA:  STR.W           R6, [R7,#var_24]
BFDEE:  MOVS            R6, #7
BFDF0:  ADD.W           R6, R6, R5,LSL#1
BFDF4:  BIC.W           R6, R6, #7
BFDF8:  SUB.W           LR, SP, R6
BFDFC:  LSLS            R6, R5, #1
BFDFE:  STR.W           R6, [R7,#n]
BFE02:  MOV             SP, LR
BFE04:  CBZ             R3, loc_BFE4E
BFE06:  CMP             R2, #1
BFE08:  IT GE
BFE0A:  CMPGE           R1, #1
BFE0C:  BLT             loc_BFE86
BFE0E:  LDR             R3, =(unk_5B2A8 - 0xBFE20)
BFE10:  MOV.W           R12, R2,LSL#1
BFE14:  MOV.W           R9, R1,LSL#1
BFE18:  MOV.W           R11, #0
BFE1C:  ADD             R3, PC; unk_5B2A8
BFE1E:  MOV             R10, R0
BFE20:  ADD.W           R3, R3, R2,LSL#2
BFE24:  SUB.W           R8, R3, #8
BFE28:  LDR.W           R3, [R8,R11,LSL#2]
BFE2C:  MOV             R6, R1
BFE2E:  MLA.W           R5, R9, R3, LR
BFE32:  MOV             R3, R10
BFE34:  LDRH            R4, [R3]
BFE36:  ADD             R3, R12
BFE38:  STRH.W          R4, [R5],#2
BFE3C:  SUBS            R6, #1
BFE3E:  BNE             loc_BFE34
BFE40:  ADD.W           R11, R11, #1
BFE44:  ADD.W           R10, R10, #2
BFE48:  CMP             R11, R2
BFE4A:  BNE             loc_BFE28
BFE4C:  B               loc_BFE86
BFE4E:  CMP             R2, #1
BFE50:  IT GE
BFE52:  CMPGE           R1, #1
BFE54:  BLT             loc_BFE86
BFE56:  LSLS            R3, R2, #1
BFE58:  MOV.W           R8, R1,LSL#1
BFE5C:  MOV.W           R9, #0
BFE60:  MOV             R10, R0
BFE62:  MOV             R11, LR
BFE64:  MOV             R6, R10
BFE66:  MOV             R4, R11
BFE68:  MOV             R5, R1
BFE6A:  LDRH.W          R12, [R6]
BFE6E:  ADD             R6, R3
BFE70:  STRH.W          R12, [R4],#2
BFE74:  SUBS            R5, #1
BFE76:  BNE             loc_BFE6A
BFE78:  ADD.W           R9, R9, #1
BFE7C:  ADD             R11, R8
BFE7E:  ADD.W           R10, R10, #2
BFE82:  CMP             R9, R2
BFE84:  BNE             loc_BFE64
BFE86:  LDR.W           R2, [R7,#n]; n
BFE8A:  MOV             R1, LR; src
BFE8C:  BLX             j_memcpy
BFE90:  LDR             R0, =(__stack_chk_guard_ptr - 0xBFE9A)
BFE92:  LDR.W           R1, [R7,#var_24]
BFE96:  ADD             R0, PC; __stack_chk_guard_ptr
BFE98:  LDR             R0, [R0]; __stack_chk_guard
BFE9A:  LDR             R0, [R0]
BFE9C:  SUBS            R0, R0, R1
BFE9E:  ITTTT EQ
BFEA0:  SUBEQ.W         R4, R7, #-var_1C
BFEA4:  MOVEQ           SP, R4
BFEA6:  POPEQ.W         {R8-R11}
BFEAA:  POPEQ           {R4-R7,PC}
BFEAC:  BLX             __stack_chk_fail
