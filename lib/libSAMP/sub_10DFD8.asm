; =========================================================
; Game Engine Function: sub_10DFD8
; Address            : 0x10DFD8 - 0x10E054
; =========================================================

10DFD8:  PUSH            {R4-R7,LR}
10DFDA:  ADD             R7, SP, #0xC
10DFDC:  PUSH.W          {R8}
10DFE0:  SUB             SP, SP, #0x18
10DFE2:  MOV             R2, R0
10DFE4:  MOV             R12, R0
10DFE6:  LDR.W           R0, [R2,#0xC]!
10DFEA:  MOV             R8, R1
10DFEC:  MOV             R4, R2
10DFEE:  LDR.W           R1, [R4,#-8]!
10DFF2:  CBZ             R1, loc_10E04C
10DFF4:  MOV             R3, R4
10DFF6:  LDR             R6, [R1,#0x10]
10DFF8:  MOV             R5, R1
10DFFA:  CMP             R6, R0
10DFFC:  IT LT
10DFFE:  ADDLT           R5, #4
10E000:  LDR             R6, [R5]
10E002:  IT GE
10E004:  MOVGE           R3, R1
10E006:  CMP             R6, #0
10E008:  MOV             R1, R6
10E00A:  BNE             loc_10DFF6
10E00C:  CMP             R3, R4
10E00E:  BEQ             loc_10E04C
10E010:  LDR             R1, [R3,#0x10]
10E012:  CMP             R0, R1
10E014:  BLT             loc_10E04C
10E016:  LDR             R3, =(unk_B433C - 0x10E026)
10E018:  ADD             R0, SP, #0x28+var_20
10E01A:  ADD             R1, SP, #0x28+var_1C
10E01C:  STR             R2, [SP,#0x28+var_1C]
10E01E:  STRD.W          R1, R0, [SP,#0x28+var_28]
10E022:  ADD             R3, PC; unk_B433C
10E024:  ADD             R0, SP, #0x28+var_18
10E026:  MOV             R1, R12
10E028:  BL              sub_10E4D0
10E02C:  LDR             R0, [SP,#0x28+var_18]
10E02E:  LDRB            R6, [R0,#0x14]
10E030:  LDR             R3, [R0,#0x1C]
10E032:  LDR             R1, =(aAxl - 0x10E03C); "AXL" ...
10E034:  LDR             R2, =(aLoadWaterFromF - 0x10E044); "Load water from file %s" ...
10E036:  LSLS            R6, R6, #0x1F
10E038:  ADD             R1, PC; "AXL"
10E03A:  IT EQ
10E03C:  ADDEQ.W         R3, R0, #0x15
10E040:  ADD             R2, PC; "Load water from file %s"
10E042:  MOVS            R0, #3; prio
10E044:  STR.W           R3, [R8]
10E048:  BLX             __android_log_print
10E04C:  ADD             SP, SP, #0x18
10E04E:  POP.W           {R8}
10E052:  POP             {R4-R7,PC}
