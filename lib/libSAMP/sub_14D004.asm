; =========================================================
; Game Engine Function: sub_14D004
; Address            : 0x14D004 - 0x14D090
; =========================================================

14D004:  PUSH            {R4,R6,R7,LR}
14D006:  ADD             R7, SP, #8
14D008:  SUB             SP, SP, #0x128
14D00A:  LDRD.W          R1, R0, [R0]; src
14D00E:  MOVS            R3, #0
14D010:  ASRS            R2, R0, #0x1F
14D012:  ADD.W           R0, R0, R2,LSR#29
14D016:  MOVS            R2, #1
14D018:  ADD.W           R2, R2, R0,ASR#3; size
14D01C:  ADD             R0, SP, #0x130+var_12C; int
14D01E:  BL              sub_17D4F2
14D022:  SUB.W           R1, R7, #-var_A; int
14D026:  MOVS            R2, #0x10
14D028:  MOVS            R3, #1
14D02A:  BL              sub_17D786
14D02E:  ADD             R4, SP, #0x130+var_18
14D030:  ADD             R0, SP, #0x130+var_12C; int
14D032:  MOVS            R2, #0x20 ; ' '
14D034:  MOVS            R3, #1
14D036:  MOV             R1, R4; int
14D038:  BL              sub_17D786
14D03C:  ADDS            R1, R4, #4; int
14D03E:  ADD             R0, SP, #0x130+var_12C; int
14D040:  MOVS            R2, #0x20 ; ' '
14D042:  MOVS            R3, #1
14D044:  BL              sub_17D786
14D048:  ADD.W           R1, R4, #8; int
14D04C:  ADD             R0, SP, #0x130+var_12C; int
14D04E:  MOVS            R2, #0x20 ; ' '
14D050:  MOVS            R3, #1
14D052:  BL              sub_17D786
14D056:  LDR             R0, =(off_23496C - 0x14D05C)
14D058:  ADD             R0, PC; off_23496C
14D05A:  LDR             R0, [R0]; dword_23DEF4
14D05C:  LDR             R0, [R0]
14D05E:  LDR.W           R0, [R0,#0x3B0]
14D062:  LDR             R0, [R0,#0x10]
14D064:  CBZ             R0, loc_14D086
14D066:  LDRH.W          R1, [R7,#var_A]
14D06A:  CMP.W           R1, #0x3E8
14D06E:  BHI             loc_14D086
14D070:  ADDS            R2, R0, R1
14D072:  LDRB            R2, [R2,#4]
14D074:  CBZ             R2, loc_14D086
14D076:  ADD.W           R0, R0, R1,LSL#2
14D07A:  LDR.W           R0, [R0,#0x3EC]
14D07E:  CBZ             R0, loc_14D086
14D080:  ADD             R1, SP, #0x130+var_18
14D082:  BL              sub_1019BC
14D086:  ADD             R0, SP, #0x130+var_12C
14D088:  BL              sub_17D542
14D08C:  ADD             SP, SP, #0x128
14D08E:  POP             {R4,R6,R7,PC}
