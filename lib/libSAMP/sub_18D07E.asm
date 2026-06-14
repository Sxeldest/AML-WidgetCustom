; =========================================================
; Game Engine Function: sub_18D07E
; Address            : 0x18D07E - 0x18D0F4
; =========================================================

18D07E:  PUSH            {R4-R7,LR}
18D080:  ADD             R7, SP, #0xC
18D082:  PUSH.W          {R8-R10}
18D086:  SUB             SP, SP, #8
18D088:  MOV             R10, R1
18D08A:  ADD.W           R1, R7, #8
18D08E:  MOV             R5, R3
18D090:  MOV             R8, R2
18D092:  MOV             R4, R0
18D094:  BL              sub_18CFBE
18D098:  MOVS            R6, #0
18D09A:  CBZ             R0, loc_18D0EA
18D09C:  ADD.W           R1, R7, #8
18D0A0:  MOV             R0, R4
18D0A2:  BL              sub_18D000
18D0A6:  SUB.W           R1, R7, #-var_1A
18D0AA:  LDR.W           R9, [R0]
18D0AE:  MOV             R0, R5
18D0B0:  MOVS            R2, #0x10
18D0B2:  MOVS            R3, #1
18D0B4:  STRB.W          R6, [R10]
18D0B8:  BL              sub_17D9C0
18D0BC:  CBZ             R0, loc_18D0EA
18D0BE:  LDR             R0, [R5]
18D0C0:  MOVS            R6, #0
18D0C2:  LDR             R1, [R5,#8]
18D0C4:  LDRH.W          R2, [R7,#var_1A]
18D0C8:  SUBS            R0, R0, R1
18D0CA:  CMP             R0, R2
18D0CC:  BLT             loc_18D0EA
18D0CE:  MOV             R0, R9
18D0D0:  MOV             R1, R5
18D0D2:  MOV             R3, R8
18D0D4:  STR.W           R10, [SP,#0x20+var_20]
18D0D8:  BL              sub_17DE9C
18D0DC:  CMP             R0, R8
18D0DE:  IT GE
18D0E0:  SUBGE.W         R0, R8, #1
18D0E4:  STRB.W          R6, [R10,R0]
18D0E8:  MOVS            R6, #1
18D0EA:  MOV             R0, R6
18D0EC:  ADD             SP, SP, #8
18D0EE:  POP.W           {R8-R10}
18D0F2:  POP             {R4-R7,PC}
