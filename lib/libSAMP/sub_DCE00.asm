; =========================================================
; Game Engine Function: sub_DCE00
; Address            : 0xDCE00 - 0xDCEAE
; =========================================================

DCE00:  PUSH            {R4-R7,LR}
DCE02:  ADD             R7, SP, #0xC
DCE04:  PUSH.W          {R8}
DCE08:  SUB             SP, SP, #0x18
DCE0A:  LDR             R2, =(unk_91AF8 - 0xDCE18)
DCE0C:  MOV             R4, R0
DCE0E:  LDRD.W          R3, R12, [R0,#8]
DCE12:  CMP             R1, #0
DCE14:  ADD             R2, PC; unk_91AF8
DCE16:  MOV             R5, R1
DCE18:  BPL             loc_DCE1C
DCE1A:  NEGS            R5, R1
DCE1C:  ORR.W           R6, R5, #1
DCE20:  CLZ.W           R6, R6
DCE24:  EOR.W           R6, R6, #0x1F
DCE28:  LDR.W           R0, [R2,R6,LSL#3]
DCE2C:  ADD.W           R2, R2, R6,LSL#3
DCE30:  LDR             R6, [R2,#4]
DCE32:  ADD.W           R2, R3, R1,LSR#31
DCE36:  ADDS            R0, R0, R5
DCE38:  ADC.W           R2, R2, R6
DCE3C:  ADC.W           R8, R6, #0
DCE40:  CMP             R12, R2
DCE42:  BCS             loc_DCE48
DCE44:  MOV             R2, R3
DCE46:  B               loc_DCE6A
DCE48:  LDR             R6, [R4,#4]
DCE4A:  STR             R2, [R4,#8]
DCE4C:  CBZ             R6, loc_DCE6A
DCE4E:  ADDS            R2, R6, R3
DCE50:  CMP.W           R1, #0xFFFFFFFF
DCE54:  ITT LE
DCE56:  MOVLE           R0, #0x2D ; '-'
DCE58:  STRBLE.W        R0, [R2],#1
DCE5C:  MOV             R1, R2
DCE5E:  ADD             R0, SP, #0x28+var_1C
DCE60:  MOV             R2, R5
DCE62:  MOV             R3, R8
DCE64:  BL              sub_DCEB4
DCE68:  B               loc_DCEA4
DCE6A:  CMP.W           R1, #0xFFFFFFFF
DCE6E:  BGT             loc_DCE8A
DCE70:  ADDS            R1, R2, #1
DCE72:  CMP             R12, R1
DCE74:  BCS             loc_DCE82
DCE76:  LDR             R0, [R4]
DCE78:  LDR             R2, [R0]
DCE7A:  MOV             R0, R4
DCE7C:  BLX             R2
DCE7E:  LDR             R2, [R4,#8]
DCE80:  ADDS            R1, R2, #1
DCE82:  LDR             R0, [R4,#4]
DCE84:  STR             R1, [R4,#8]
DCE86:  MOVS            R1, #0x2D ; '-'
DCE88:  STRB            R1, [R0,R2]
DCE8A:  ADD             R6, SP, #0x28+var_1C
DCE8C:  ADD             R0, SP, #0x28+var_24
DCE8E:  MOV             R2, R5
DCE90:  MOV             R3, R8
DCE92:  MOV             R1, R6
DCE94:  BL              sub_DCEB4
DCE98:  LDR             R1, [SP,#0x28+var_20]
DCE9A:  MOV             R0, R6
DCE9C:  MOV             R2, R4
DCE9E:  BL              sub_DCF1C
DCEA2:  MOV             R4, R0
DCEA4:  MOV             R0, R4
DCEA6:  ADD             SP, SP, #0x18
DCEA8:  POP.W           {R8}
DCEAC:  POP             {R4-R7,PC}
