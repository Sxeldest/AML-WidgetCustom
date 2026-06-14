; =========================================================
; Game Engine Function: sub_13E220
; Address            : 0x13E220 - 0x13E2A0
; =========================================================

13E220:  PUSH            {R4-R7,LR}
13E222:  ADD             R7, SP, #0xC
13E224:  PUSH.W          {R8-R11}
13E228:  SUB             SP, SP, #0xC
13E22A:  LDR.W           R10, [R0,#4]
13E22E:  ADD.W           R4, R1, #0x3C ; '<'
13E232:  MOV             R9, R1
13E234:  MOV             R6, R0
13E236:  CMP             R4, R10
13E238:  BEQ             loc_13E282
13E23A:  MOV.W           R11, #0
13E23E:  STR             R6, [SP,#0x28+var_24]
13E240:  STR.W           R9, [SP,#0x28+var_20]
13E244:  ADD.W           R8, R9, #0x3C ; '<'
13E248:  MOV             R1, R9
13E24A:  MOV             R0, R8
13E24C:  LDM             R0!, {R2-R5}
13E24E:  STM             R1!, {R2-R5}
13E250:  LDM             R0!, {R2-R6}
13E252:  STM             R1!, {R2-R6}
13E254:  LDM.W           R0, {R2-R6}
13E258:  ADD.W           R0, R9, #0x38 ; '8'
13E25C:  STM             R1!, {R2-R6}
13E25E:  LDR.W           R1, [R9,#0x74]
13E262:  STR.W           R11, [R9,#0x74]
13E266:  BL              sub_13E4F0
13E26A:  ADD.W           R0, R9, #0x78 ; 'x'
13E26E:  MOV             R9, R8
13E270:  CMP             R0, R10
13E272:  BNE             loc_13E244
13E274:  LDR             R6, [SP,#0x28+var_24]
13E276:  LDR.W           R9, [SP,#0x28+var_20]
13E27A:  LDR             R4, [R6,#4]
13E27C:  CMP             R8, R4
13E27E:  BNE             loc_13E284
13E280:  B               loc_13E292
13E282:  MOV             R8, R9
13E284:  SUBS            R0, R4, #4
13E286:  MOVS            R1, #0
13E288:  BL              sub_13E4F0
13E28C:  SUBS            R4, #0x3C ; '<'
13E28E:  CMP             R4, R8
13E290:  BNE             loc_13E284
13E292:  STR.W           R8, [R6,#4]
13E296:  MOV             R0, R9
13E298:  ADD             SP, SP, #0xC
13E29A:  POP.W           {R8-R11}
13E29E:  POP             {R4-R7,PC}
