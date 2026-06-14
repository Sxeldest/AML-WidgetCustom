; =========================================================
; Game Engine Function: sub_17E1FC
; Address            : 0x17E1FC - 0x17E2E4
; =========================================================

17E1FC:  PUSH            {R4-R7,LR}
17E1FE:  ADD             R7, SP, #0xC
17E200:  PUSH.W          {R8-R11}
17E204:  SUB             SP, SP, #0x14
17E206:  MOV             R5, R1
17E208:  MOV             R1, R0
17E20A:  MOVW            R0, #0x58BF
17E20E:  CMP             R5, #0
17E210:  STRH.W          R0, [SP,#0x30+var_24]
17E214:  MOV             R0, #0xCE6DD971
17E21C:  STR             R0, [SP,#0x30+var_28]
17E21E:  MOV.W           R0, #0
17E222:  STR             R0, [SP,#0x30+var_20]
17E224:  BEQ             loc_17E2DC
17E226:  MOV             R9, R2
17E228:  CMP             R2, #0x10
17E22A:  BLT             loc_17E2DC
17E22C:  ANDS.W          R2, R9, #0xF
17E230:  BNE             loc_17E2DC
17E232:  ADD.W           R11, R1, #0x120
17E236:  ADD.W           R6, R1, #0x240
17E23A:  CMP.W           R9, #0x20 ; ' '
17E23E:  STR             R3, [SP,#0x30+dest]
17E240:  BCC             loc_17E286
17E242:  SUB.W           R4, R9, #0x10
17E246:  ADD.W           R10, R5, #0x10
17E24A:  MOV.W           R8, #0x10
17E24E:  ADD.W           R2, R5, R8
17E252:  MOV             R0, R6
17E254:  MOV             R1, R11
17E256:  MOVS            R3, #0x10
17E258:  STR             R2, [SP,#0x30+var_30]
17E25A:  BL              sub_18E136
17E25E:  ADD.W           R8, R8, #0x10
17E262:  MOV             R0, R5
17E264:  MOVS            R1, #0
17E266:  CMP             R8, R9
17E268:  IT NE
17E26A:  ADDNE           R0, R8
17E26C:  LDRB            R2, [R0,R1]
17E26E:  LDRB.W          R3, [R10,R1]
17E272:  EORS            R2, R3
17E274:  STRB.W          R2, [R10,R1]
17E278:  ADDS            R1, #1
17E27A:  CMP             R1, #0x10
17E27C:  BNE             loc_17E26C
17E27E:  ADD.W           R10, R10, #0x10
17E282:  CMP             R8, R4
17E284:  BLE             loc_17E24E
17E286:  MOV             R0, R6
17E288:  MOV             R1, R11
17E28A:  MOV             R2, R5
17E28C:  MOVS            R3, #0x10
17E28E:  STR             R5, [SP,#0x30+var_30]
17E290:  BL              sub_18E136
17E294:  LDRB            R0, [R5,#5]
17E296:  ADDS            R1, R5, #4
17E298:  LDR.W           R8, [R7,#arg_0]
17E29C:  SUB.W           R2, R9, #4
17E2A0:  AND.W           R4, R0, #0xF
17E2A4:  LDR             R6, [R5]
17E2A6:  SUB.W           R0, R9, R4
17E2AA:  SUBS            R0, #6
17E2AC:  STR.W           R0, [R8]
17E2B0:  ADD             R0, SP, #0x30+var_28
17E2B2:  BL              sub_17DAA2
17E2B6:  LDR             R0, [SP,#0x30+var_20]
17E2B8:  CMP             R6, R0
17E2BA:  BNE             loc_17E2D0
17E2BC:  ADDS            R0, R5, R4
17E2BE:  LDR.W           R2, [R8]; n
17E2C2:  ADDS            R1, R0, #6; src
17E2C4:  LDR             R0, [SP,#0x30+dest]; dest
17E2C6:  CMP             R5, R0
17E2C8:  BEQ             loc_17E2D4
17E2CA:  BLX             j_memcpy
17E2CE:  B               loc_17E2DA
17E2D0:  MOVS            R0, #0
17E2D2:  B               loc_17E2DC
17E2D4:  MOV             R0, R5; dest
17E2D6:  BLX             j_memmove
17E2DA:  MOVS            R0, #1
17E2DC:  ADD             SP, SP, #0x14
17E2DE:  POP.W           {R8-R11}
17E2E2:  POP             {R4-R7,PC}
