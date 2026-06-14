; =========================================================
; Game Engine Function: sub_180BD0
; Address            : 0x180BD0 - 0x180D12
; =========================================================

180BD0:  PUSH            {R4-R7,LR}
180BD2:  ADD             R7, SP, #0xC
180BD4:  PUSH.W          {R8-R10}
180BD8:  SUB.W           SP, SP, #0x248
180BDC:  MOV             R6, SP
180BDE:  MOV             R8, R0
180BE0:  ADD.W           R0, R6, #0x134; int
180BE4:  MOV             R4, R3
180BE6:  MOVS            R3, #0
180BE8:  ADD.W           R9, R6, #0x12C
180BEC:  MOV             R5, R1
180BEE:  MOV.W           R10, #0
180BF2:  BL              sub_17D4F2
180BF6:  STR.W           R10, [R9,#4]
180BFA:  ADDS            R0, R6, #4
180BFC:  BL              sub_17D4A8
180C00:  LDR             R1, [R7,#arg_0]
180C02:  STR.W           R8, [R9,#-4]
180C06:  STR.W           R0, [R9]
180C0A:  STR.W           R4, [R9,#-0xC]
180C0E:  STRH.W          R1, [R6,#0x260+var_13C]
180C12:  ADD.W           R0, R6, #0x134
180C16:  MOVS            R1, #8
180C18:  BL              sub_17DA96
180C1C:  LDRB            R0, [R5]
180C1E:  CMP             R0, #0x28 ; '('
180C20:  BNE             loc_180C2C
180C22:  ADD.W           R0, R6, #0x134
180C26:  MOVS            R1, #0x28 ; '('
180C28:  BL              sub_17DA96
180C2C:  ADD.W           R0, R6, #0x134; int
180C30:  ADD.W           R1, R6, #0x130; dest
180C34:  MOVS            R2, #1
180C36:  BL              sub_17D744
180C3A:  LDR.W           R1, [R9,#4]
180C3E:  ADDW            R4, R8, #0x7D4
180C42:  MOV             R0, R4
180C44:  BL              sub_17E660
180C48:  MOV             R5, R0
180C4A:  ADD.W           R0, R6, #0x118
180C4E:  MOVS            R2, #0x20 ; ' '
180C50:  ADDS            R1, R0, #4
180C52:  ADD.W           R0, R6, #0x134
180C56:  MOVS            R3, #1
180C58:  BL              sub_17D9C0
180C5C:  SUB.W           R1, R5, #0xFF
180C60:  EOR.W           R0, R0, #1
180C64:  CLZ.W           R1, R1
180C68:  LSRS            R1, R1, #5
180C6A:  ORRS            R0, R1
180C6C:  BNE             loc_180CF4
180C6E:  MOV             R0, R4
180C70:  MOV             R1, R5
180C72:  BL              sub_17E650
180C76:  MOV             R4, R0
180C78:  CBZ             R0, loc_180CF4
180C7A:  LDR.W           R5, [R9,#-0x10]
180C7E:  CBZ             R5, loc_180CB0
180C80:  LDR.W           R0, [R9,#8]
180C84:  LDR.W           R1, [R9,#0x10]
180C88:  SUBS.W          R10, R0, R1
180C8C:  BEQ             loc_180CF4
180C8E:  MOVW            R1, #0xFFF8
180C92:  ADD.W           R0, R10, #7
180C96:  MOVT            R1, #0x7F
180C9A:  CMP             R10, R1
180C9C:  BGT             loc_180CBA
180C9E:  MOVS            R1, #7
180CA0:  ADD.W           R0, R1, R0,ASR#3
180CA4:  BIC.W           R0, R0, #7
180CA8:  SUB.W           R8, SP, R0
180CAC:  MOV             SP, R8
180CAE:  B               loc_180CC2
180CB0:  LDR             R1, [R4,#4]
180CB2:  ADD.W           R0, R6, #0x118
180CB6:  BLX             R1
180CB8:  B               loc_180CF0
180CBA:  LSRS            R0, R0, #3; unsigned int
180CBC:  BLX             j__Znaj; operator new[](uint)
180CC0:  MOV             R8, R0
180CC2:  ADD.W           R0, R6, #0x134; int
180CC6:  MOV             R1, R8; int
180CC8:  MOV             R2, R5
180CCA:  MOVS            R3, #0
180CCC:  BL              sub_17D786
180CD0:  CBZ             R0, loc_180CF4
180CD2:  LDR             R1, [R4,#4]
180CD4:  STR.W           R8, [R9,#-0x14]
180CD8:  ADD.W           R0, R6, #0x118
180CDC:  BLX             R1
180CDE:  MOV             R0, #0x7FFFF9
180CE6:  CMP             R10, R0
180CE8:  ITT GE
180CEA:  MOVGE           R0, R8; void *
180CEC:  BLXGE           j__ZdaPv; operator delete[](void *)
180CF0:  MOVS            R4, #1
180CF2:  B               loc_180CF6
180CF4:  MOVS            R4, #0
180CF6:  ADDS            R0, R6, #4
180CF8:  BL              sub_17D542
180CFC:  ADD.W           R0, R6, #0x134
180D00:  BL              sub_17D542
180D04:  MOV             R0, R4
180D06:  SUB.W           R4, R7, #-var_18
180D0A:  MOV             SP, R4
180D0C:  POP.W           {R8-R10}
180D10:  POP             {R4-R7,PC}
