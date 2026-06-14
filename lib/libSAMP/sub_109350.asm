; =========================================================
; Game Engine Function: sub_109350
; Address            : 0x109350 - 0x10940C
; =========================================================

109350:  PUSH            {R4-R7,LR}
109352:  ADD             R7, SP, #0xC
109354:  PUSH.W          {R8}
109358:  VPUSH           {D8-D10}
10935C:  SUB             SP, SP, #0x48
10935E:  MOV             R4, R3
109360:  LDR             R3, =(byte_26303C - 0x10936A)
109362:  VMOV            S16, R2
109366:  ADD             R3, PC; byte_26303C
109368:  VMOV            S20, R1
10936C:  VMOV            S18, R0
109370:  LDRB            R2, [R3]
109372:  DMB.W           ISH
109376:  LDR             R6, =(off_263038 - 0x10937C)
109378:  ADD             R6, PC; off_263038
10937A:  LSLS            R0, R2, #0x1F
10937C:  BEQ             loc_1093E2
10937E:  ADD.W           R8, SP, #0x70+var_40
109382:  ADD             R0, SP, #0x70+var_34
109384:  VSTR            S16, [SP,#0x70+var_2C]
109388:  MOV             R1, R8
10938A:  VSTR            S20, [SP,#0x70+var_30]
10938E:  VSTR            S18, [SP,#0x70+var_34]
109392:  BL              sub_10920C
109396:  MOVS            R5, #0
109398:  STR             R5, [SP,#0x70+var_50]
10939A:  BL              sub_F7FE0
10939E:  UBFX.W          R3, R4, #3, #1
1093A2:  LDR.W           LR, [R6]
1093A6:  UBFX.W          R2, R4, #4, #1
1093AA:  UBFX.W          R1, R4, #2, #1
1093AE:  STRD.W          R1, R3, [SP,#0x70+var_68]
1093B2:  UBFX.W          R6, R4, #1, #1
1093B6:  STRD.W          R2, R5, [SP,#0x70+var_60]
1093BA:  ADDS            R0, #0xC
1093BC:  ADD             R2, SP, #0x70+var_4C
1093BE:  ADD             R3, SP, #0x70+var_50
1093C0:  MOV.W           R12, #1
1093C4:  MOV             R1, R8
1093C6:  AND.W           R4, R4, #1
1093CA:  STRD.W          R4, R6, [SP,#0x70+var_70]
1093CE:  STRD.W          R5, R12, [SP,#0x70+var_58]
1093D2:  BLX             LR
1093D4:  LDR             R0, [SP,#0x70+var_50]
1093D6:  ADD             SP, SP, #0x48 ; 'H'
1093D8:  VPOP            {D8-D10}
1093DC:  POP.W           {R8}
1093E0:  POP             {R4-R7,PC}
1093E2:  LDR             R0, =(byte_26303C - 0x1093E8)
1093E4:  ADD             R0, PC; byte_26303C ; __guard *
1093E6:  BLX             j___cxa_guard_acquire
1093EA:  CMP             R0, #0
1093EC:  BEQ             loc_10937E
1093EE:  LDR             R0, =(off_23494C - 0x1093FC)
1093F0:  MOV             R2, #0x424B45
1093F8:  ADD             R0, PC; off_23494C
1093FA:  LDR             R1, [R0]; dword_23DF24
1093FC:  LDR             R0, =(byte_26303C - 0x109404)
1093FE:  LDR             R1, [R1]
109400:  ADD             R0, PC; byte_26303C ; __guard *
109402:  ADD             R1, R2
109404:  STR             R1, [R6]
109406:  BLX             j___cxa_guard_release
10940A:  B               loc_10937E
