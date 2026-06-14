; =========================================================
; Game Engine Function: sub_140128
; Address            : 0x140128 - 0x140160
; =========================================================

140128:  PUSH            {R4,R6,R7,LR}
14012A:  ADD             R7, SP, #8
14012C:  LDR             R0, [R0,#0x1C]
14012E:  CBZ             R0, loc_140142
140130:  LDR             R0, =(off_23496C - 0x140136)
140132:  ADD             R0, PC; off_23496C
140134:  LDR             R0, [R0]; dword_23DEF4
140136:  LDR             R0, [R0]
140138:  LDRB.W          R0, [R0,#0x208]
14013C:  CBZ             R0, loc_140148
14013E:  MOVS            R0, #0xF
140140:  POP             {R4,R6,R7,PC}
140142:  MOV.W           R0, #0x3E8
140146:  POP             {R4,R6,R7,PC}
140148:  LDR             R0, =(off_234C2C - 0x140150)
14014A:  LDR             R1, =(off_234970 - 0x140152)
14014C:  ADD             R0, PC; off_234C2C
14014E:  ADD             R1, PC; off_234970
140150:  LDR             R0, [R0]; dword_23903C
140152:  LDR             R1, [R1]; dword_23DEF0
140154:  LDR             R4, [R0]
140156:  LDR             R0, [R1]
140158:  BL              sub_F9A54
14015C:  ADD             R0, R4
14015E:  POP             {R4,R6,R7,PC}
