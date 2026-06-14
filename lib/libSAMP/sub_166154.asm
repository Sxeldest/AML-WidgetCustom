; =========================================================
; Game Engine Function: sub_166154
; Address            : 0x166154 - 0x1661E8
; =========================================================

166154:  PUSH            {R4-R7,LR}
166156:  ADD             R7, SP, #0xC
166158:  PUSH.W          {R8-R10}
16615C:  SUB             SP, SP, #0x10; int
16615E:  CMP             R3, #0
166160:  IT EQ
166162:  MOVEQ.W         R3, #0xFFFFFFFF
166166:  CMP             R3, R2
166168:  BLS             loc_1661E0
16616A:  LDR.W           R12, [R7,#arg_8]
16616E:  MOV             R9, R1
166170:  LDRD.W          R8, LR, [R7,#arg_0]
166174:  SUBS            R1, R3, R2
166176:  MOV             R10, R0
166178:  MOV             R4, R2
16617A:  MOVS            R0, #0
16617C:  MOV             R6, R2
16617E:  LDRB            R2, [R4,R0]
166180:  CMP             R2, #0x23 ; '#'
166182:  BEQ             loc_166188
166184:  CBNZ            R2, loc_166190
166186:  B               loc_16619C
166188:  ADDS            R2, R4, R0
16618A:  LDRB            R2, [R2,#1]
16618C:  CMP             R2, #0x23 ; '#'
16618E:  BEQ             loc_16619E
166190:  ADDS            R0, #1
166192:  ADDS            R6, #1
166194:  CMP             R1, R0
166196:  BNE             loc_16617E
166198:  MOV             R6, R3
16619A:  B               loc_16619E
16619C:  ADDS            R6, R4, R0
16619E:  CMP             R6, R4
1661A0:  BEQ             loc_1661E0
1661A2:  LDR             R0, =(dword_381B58 - 0x1661AE)
1661A4:  MOV             R1, R10; int
1661A6:  MOV             R2, R9; int
1661A8:  MOV             R3, R4; int
1661AA:  ADD             R0, PC; dword_381B58
1661AC:  LDR             R5, [R0]
1661AE:  MOVW            R0, #0x19AC
1661B2:  LDR             R0, [R5,R0]
1661B4:  LDR.W           R0, [R0,#0x27C]; int
1661B8:  STMEA.W         SP, {R6,R8,LR}
1661BC:  STR.W           R12, [SP,#0x28+var_1C]; int
1661C0:  BL              sub_165EC8
1661C4:  MOVW            R0, #0x2D20
1661C8:  LDRB            R0, [R5,R0]
1661CA:  CBZ             R0, loc_1661E0
1661CC:  MOV             R0, R10; int
1661CE:  MOV             R1, R4; s
1661D0:  MOV             R2, R6
1661D2:  ADD             SP, SP, #0x10
1661D4:  POP.W           {R8-R10}
1661D8:  POP.W           {R4-R7,LR}
1661DC:  B.W             sub_165CCC
1661E0:  ADD             SP, SP, #0x10
1661E2:  POP.W           {R8-R10}
1661E6:  POP             {R4-R7,PC}
