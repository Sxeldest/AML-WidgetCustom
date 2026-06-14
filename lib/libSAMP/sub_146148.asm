; =========================================================
; Game Engine Function: sub_146148
; Address            : 0x146148 - 0x1461C0
; =========================================================

146148:  PUSH            {R4,R6,R7,LR}
14614A:  ADD             R7, SP, #8
14614C:  SUB             SP, SP, #0x148
14614E:  LDRD.W          R1, R0, [R0]; src
146152:  MOVS            R3, #0
146154:  ASRS            R2, R0, #0x1F
146156:  MOVS            R4, #0
146158:  ADD.W           R0, R0, R2,LSR#29
14615C:  MOVS            R2, #1
14615E:  ADD.W           R2, R2, R0,ASR#3; size
146162:  ADD             R0, SP, #0x150+var_11C; int
146164:  BL              sub_17D4F2
146168:  LDR             R1, =(off_23496C - 0x146176)
14616A:  MOVW            R2, #0x13BC
14616E:  STRB.W          R4, [SP,#0x150+var_11D]
146172:  ADD             R1, PC; off_23496C
146174:  LDR             R1, [R1]; dword_23DEF4
146176:  LDR             R1, [R1]
146178:  LDR.W           R1, [R1,#0x3B0]
14617C:  LDR             R1, [R1]
14617E:  LDR             R4, [R1,R2]
146180:  ADD.W           R1, SP, #0x150+var_11D; int
146184:  MOVS            R2, #8
146186:  MOVS            R3, #1
146188:  BL              sub_17D786
14618C:  ADD             R0, SP, #0x150+var_11C; int
14618E:  ADD             R1, SP, #0x150+dest; dest
146190:  MOVS            R2, #0x2E ; '.'
146192:  BL              sub_17D744
146196:  LDRB.W          R0, [SP,#0x150+var_11D]
14619A:  CBZ             R0, loc_1461AE
14619C:  ADD             R1, SP, #0x150+dest
14619E:  MOV             R0, R4
1461A0:  BL              sub_1413C0
1461A4:  MOV             R0, R4
1461A6:  MOVS            R1, #1
1461A8:  BL              sub_1413D6
1461AC:  B               loc_1461B6
1461AE:  MOV             R0, R4
1461B0:  MOVS            R1, #0
1461B2:  BL              sub_1413D6
1461B6:  ADD             R0, SP, #0x150+var_11C
1461B8:  BL              sub_17D542
1461BC:  ADD             SP, SP, #0x148
1461BE:  POP             {R4,R6,R7,PC}
