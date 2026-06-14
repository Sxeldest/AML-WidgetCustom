; =========================================================
; Game Engine Function: sub_7E314
; Address            : 0x7E314 - 0x7E364
; =========================================================

7E314:  PUSH            {R4-R7,LR}
7E316:  ADD             R7, SP, #0xC
7E318:  PUSH.W          {R11}
7E31C:  SUB             SP, SP, #0x10
7E31E:  MOV             R5, R1
7E320:  MOV             R4, R0
7E322:  BL              sub_85278
7E326:  LDR             R0, =(off_114CE4 - 0x7E32C)
7E328:  ADD             R0, PC; off_114CE4
7E32A:  LDR             R0, [R0]; off_1ABF5C
7E32C:  LDR             R6, [R0]
7E32E:  MOV             R0, R5
7E330:  BL              sub_7DB44
7E334:  VLDR            S2, [R4,#0x58]
7E338:  VLDR            S0, =0.1
7E33C:  VMOV            R3, S2
7E340:  VMUL.F32        S0, S2, S0
7E344:  VMOV            R2, S0
7E348:  MOVS            R1, #0
7E34A:  MOV.W           R5, #0xFFFFFFFF
7E34E:  MOVT            R1, #0xBF80
7E352:  STRD.W          R5, R5, [SP,#0x20+var_20]
7E356:  STR             R1, [SP,#0x20+var_18]
7E358:  MOVS            R1, #0
7E35A:  BLX             R6
7E35C:  ADD             SP, SP, #0x10
7E35E:  POP.W           {R11}
7E362:  POP             {R4-R7,PC}
