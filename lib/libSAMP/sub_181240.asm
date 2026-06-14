; =========================================================
; Game Engine Function: sub_181240
; Address            : 0x181240 - 0x18129E
; =========================================================

181240:  PUSH            {R4-R7,LR}
181242:  ADD             R7, SP, #0xC
181244:  PUSH.W          {R8,R9,R11}
181248:  SUB             SP, SP, #8
18124A:  MOV             R5, R0
18124C:  LDRH            R0, [R0,#8]
18124E:  STRD.W          R1, R2, [SP,#0x20+var_20]
181252:  CBZ             R0, loc_181290
181254:  MOV             R9, R3
181256:  MOVS            R6, #0
181258:  MOV             R8, SP
18125A:  MOVS            R4, #0
18125C:  LDR.W           R0, [R5,#0x340]
181260:  LDRB            R1, [R0,R6]
181262:  CBZ             R1, loc_181284
181264:  ADD             R0, R6
181266:  LDR.W           R1, [R0,#0x83C]
18126A:  CMP             R1, #8
18126C:  BNE             loc_181284
18126E:  ADDS            R0, #4
181270:  MOV             R1, R8
181272:  CMP.W           R9, #0
181276:  BEQ             loc_18127E
181278:  BL              sub_17E596
18127C:  B               loc_181282
18127E:  BL              sub_17E580
181282:  CBNZ            R0, loc_18129A
181284:  LDRH            R0, [R5,#8]
181286:  ADDS            R4, #1
181288:  ADD.W           R6, R6, #0x840
18128C:  CMP             R4, R0
18128E:  BCC             loc_18125C
181290:  MOVS            R0, #0
181292:  ADD             SP, SP, #8
181294:  POP.W           {R8,R9,R11}
181298:  POP             {R4-R7,PC}
18129A:  MOVS            R0, #1
18129C:  B               loc_181292
