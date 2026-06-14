; =========================================================
; Game Engine Function: sub_EBE18
; Address            : 0xEBE18 - 0xEBE7C
; =========================================================

EBE18:  PUSH            {R4-R7,LR}
EBE1A:  ADD             R7, SP, #0xC
EBE1C:  PUSH.W          {R8-R10}
EBE20:  SUB             SP, SP, #8
EBE22:  MOV             R8, R1
EBE24:  ADD             R1, SP, #0x20+var_1C
EBE26:  MOV             R9, R0
EBE28:  MOV             R0, R8
EBE2A:  BL              sub_EA184
EBE2E:  LDR             R6, [R0]
EBE30:  MOVS            R4, #0
EBE32:  CBNZ            R6, loc_EBE6C
EBE34:  MOV             R5, R0
EBE36:  MOVS            R0, #0x30 ; '0'; unsigned int
EBE38:  LDR.W           R10, [R7,#arg_0]
EBE3C:  BLX             j__Znwj; operator new(uint)
EBE40:  MOV             R6, R0
EBE42:  LDR.W           R0, [R10]
EBE46:  LDR             R1, [SP,#0x20+var_1C]
EBE48:  MOV             R3, R6
EBE4A:  VLDR            D16, [R0]
EBE4E:  LDR             R2, [R0,#8]
EBE50:  STR             R2, [R6,#0x18]
EBE52:  MOV             R2, R5
EBE54:  VSTR            D16, [R6,#0x10]
EBE58:  STRD.W          R4, R4, [R0]
EBE5C:  STR             R4, [R0,#8]
EBE5E:  MOV             R0, R8
EBE60:  STR             R4, [R6,#0x28]
EBE62:  STRB.W          R4, [R6,#0x20]
EBE66:  BL              sub_EA246
EBE6A:  MOVS            R4, #1
EBE6C:  STRB.W          R4, [R9,#4]
EBE70:  STR.W           R6, [R9]
EBE74:  ADD             SP, SP, #8
EBE76:  POP.W           {R8-R10}
EBE7A:  POP             {R4-R7,PC}
