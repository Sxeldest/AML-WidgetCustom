; =========================================================
; Game Engine Function: sub_143028
; Address            : 0x143028 - 0x1430A8
; =========================================================

143028:  PUSH            {R4,R6,R7,LR}
14302A:  ADD             R7, SP, #8
14302C:  SUB             SP, SP, #0x150
14302E:  MOV             R4, R0
143030:  LDR.W           R0, [R0,#0x218]
143034:  CMP             R0, #5
143036:  BNE             loc_1430A4
143038:  LDR             R2, [R1,#0xC]; size
14303A:  ADD             R0, SP, #0x158+var_11C; int
14303C:  LDR             R1, [R1,#0x14]; src
14303E:  MOVS            R3, #0
143040:  BL              sub_17D4F2
143044:  ADR             R1, dword_1430B8
143046:  VLD1.64         {D16-D17}, [R1]
14304A:  MOV             R1, SP
14304C:  ADDS            R1, #0xE
14304E:  VST1.32         {D16-D17}, [R1]
143052:  ADD.W           R1, SP, #0x158+var_11D; int
143056:  MOVS            R2, #8
143058:  MOVS            R3, #1
14305A:  BL              sub_17D786
14305E:  ADD             R0, SP, #0x158+var_11C; int
143060:  ADD             R1, SP, #0x158+var_120; int
143062:  MOVS            R2, #0x10
143064:  MOVS            R3, #1
143066:  BL              sub_17D786
14306A:  ADD             R0, SP, #0x158+var_11C; int
14306C:  MOV             R1, SP; dest
14306E:  MOVS            R2, #0x36 ; '6'
143070:  BL              sub_17D744
143074:  LDRH.W          R0, [SP,#0x158+var_120]
143078:  CMP.W           R0, #0x3EC
14307C:  BHI             loc_14309E
14307E:  LDR.W           R1, [R4,#0x3B0]
143082:  LDR             R1, [R1]
143084:  ADDS            R2, R1, R0
143086:  LDRB.W          R2, [R2,#0xFB4]
14308A:  CBZ             R2, loc_14309E
14308C:  ADD.W           R0, R1, R0,LSL#2
143090:  LDR             R0, [R0,#4]
143092:  CBZ             R0, loc_14309E
143094:  LDR             R0, [R0]
143096:  CBZ             R0, loc_14309E
143098:  MOV             R1, SP
14309A:  BL              sub_14AE1C
14309E:  ADD             R0, SP, #0x158+var_11C
1430A0:  BL              sub_17D542
1430A4:  ADD             SP, SP, #0x150
1430A6:  POP             {R4,R6,R7,PC}
