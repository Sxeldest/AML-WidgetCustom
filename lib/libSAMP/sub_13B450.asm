; =========================================================
; Game Engine Function: sub_13B450
; Address            : 0x13B450 - 0x13B500
; =========================================================

13B450:  PUSH            {R4-R7,LR}
13B452:  ADD             R7, SP, #0xC
13B454:  PUSH.W          {R8-R11}
13B458:  SUB             SP, SP, #4
13B45A:  LDR             R4, [R0,#4]
13B45C:  CMP             R4, #0
13B45E:  BEQ             loc_13B4F4
13B460:  MOV             R6, R0
13B462:  MOV.W           R0, #0x55555555
13B466:  AND.W           R0, R0, R4,LSR#1
13B46A:  LDRSH.W         R5, [R1]
13B46E:  SUBS            R0, R4, R0
13B470:  MOV.W           R1, #0x33333333
13B474:  AND.W           R1, R1, R0,LSR#2
13B478:  BIC.W           R0, R0, #0xCCCCCCCC
13B47C:  ADD             R0, R1
13B47E:  MOV.W           R1, #0x1010101
13B482:  ADD.W           R0, R0, R0,LSR#4
13B486:  BIC.W           R0, R0, #0xF0F0F0F0
13B48A:  MULS            R0, R1
13B48C:  MOV.W           R9, R0,LSR#24
13B490:  CMP.W           R9, #1
13B494:  BHI             loc_13B49E
13B496:  SUBS            R0, R4, #1
13B498:  AND.W           R8, R0, R5
13B49C:  B               loc_13B4B0
13B49E:  CMP             R4, R5
13B4A0:  BLS             loc_13B4A6
13B4A2:  MOV             R8, R5
13B4A4:  B               loc_13B4B0
13B4A6:  MOV             R0, R5
13B4A8:  MOV             R1, R4
13B4AA:  BLX             sub_221798
13B4AE:  MOV             R8, R1
13B4B0:  LDR             R0, [R6]
13B4B2:  LDR.W           R0, [R0,R8,LSL#2]
13B4B6:  CBZ             R0, loc_13B4F4
13B4B8:  LDR             R6, [R0]
13B4BA:  CBZ             R6, loc_13B4F4
13B4BC:  SUB.W           R11, R4, #1
13B4C0:  UXTH.W          R10, R5
13B4C4:  LDR             R0, [R6,#4]
13B4C6:  CMP             R0, R5
13B4C8:  BNE             loc_13B4D2
13B4CA:  LDRH            R0, [R6,#8]
13B4CC:  CMP             R0, R10
13B4CE:  BNE             loc_13B4EE
13B4D0:  B               loc_13B4F6
13B4D2:  CMP.W           R9, #1
13B4D6:  BHI             loc_13B4DE
13B4D8:  AND.W           R0, R0, R11
13B4DC:  B               loc_13B4EA
13B4DE:  CMP             R0, R4
13B4E0:  BCC             loc_13B4EA
13B4E2:  MOV             R1, R4
13B4E4:  BLX             sub_221798
13B4E8:  MOV             R0, R1
13B4EA:  CMP             R0, R8
13B4EC:  BNE             loc_13B4F4
13B4EE:  LDR             R6, [R6]
13B4F0:  CMP             R6, #0
13B4F2:  BNE             loc_13B4C4
13B4F4:  MOVS            R6, #0
13B4F6:  MOV             R0, R6
13B4F8:  ADD             SP, SP, #4
13B4FA:  POP.W           {R8-R11}
13B4FE:  POP             {R4-R7,PC}
