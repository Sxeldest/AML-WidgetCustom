; =========================================================
; Game Engine Function: sub_14131C
; Address            : 0x14131C - 0x141374
; =========================================================

14131C:  PUSH            {R4-R7,LR}
14131E:  ADD             R7, SP, #0xC
141320:  PUSH.W          {R8}
141324:  SUB             SP, SP, #0x130
141326:  ADD.W           R8, SP, #0x140+var_124
14132A:  MOV             R0, R8
14132C:  BL              sub_17D4A8
141330:  LDR             R0, =(off_23496C - 0x141336)
141332:  ADD             R0, PC; off_23496C
141334:  LDR             R0, [R0]; dword_23DEF4
141336:  LDR             R0, [R0]
141338:  LDR.W           R0, [R0,#0x210]
14133C:  LDR             R1, =(off_234C3C - 0x141342)
14133E:  ADD             R1, PC; off_234C3C
141340:  LDR             R2, [R0]
141342:  LDR             R1, [R1]; unk_23C748
141344:  LDR             R4, [R2,#0x6C]
141346:  MOVS            R2, #0
141348:  MOVW            R3, #0xFFFF
14134C:  MOV.W           R5, #0xFFFFFFFF
141350:  MOVS            R6, #8
141352:  STRD.W          R3, R3, [SP,#0x140+var_130]
141356:  STRD.W          R6, R2, [SP,#0x140+var_140]
14135A:  MOVS            R3, #1
14135C:  STRD.W          R2, R5, [SP,#0x140+var_138]
141360:  STR             R2, [SP,#0x140+var_128]
141362:  MOV             R2, R8
141364:  BLX             R4
141366:  ADD             R0, SP, #0x140+var_124
141368:  BL              sub_17D542
14136C:  ADD             SP, SP, #0x130
14136E:  POP.W           {R8}
141372:  POP             {R4-R7,PC}
