; =========================================================
; Game Engine Function: _Z19RpWorldForAllLightsP7RpWorldPFP7RpLightS2_PvES3_
; Address            : 0x21D4C8 - 0x21D518
; =========================================================

21D4C8:  PUSH            {R4-R7,LR}
21D4CA:  ADD             R7, SP, #0xC
21D4CC:  PUSH.W          {R8,R9,R11}
21D4D0:  MOV             R8, R0
21D4D2:  MOV             R9, R2
21D4D4:  MOV             R5, R8
21D4D6:  MOV             R6, R1
21D4D8:  LDR.W           R0, [R5,#0x3C]!
21D4DC:  CMP             R0, R5
21D4DE:  BEQ             loc_21D4F4
21D4E0:  CMP             R5, R0
21D4E2:  BEQ             loc_21D4F4
21D4E4:  LDR.W           R4, [R0],#-0x34
21D4E8:  MOV             R1, R9
21D4EA:  BLX             R6
21D4EC:  CMP             R0, #0
21D4EE:  MOV             R0, R4
21D4F0:  BNE             loc_21D4E0
21D4F2:  B               loc_21D510
21D4F4:  MOV             R5, R8
21D4F6:  LDR.W           R0, [R5,#0x34]!
21D4FA:  CMP             R0, R5
21D4FC:  BEQ             loc_21D510
21D4FE:  CMP             R5, R0
21D500:  BEQ             loc_21D510
21D502:  LDR.W           R4, [R0],#-0x34
21D506:  MOV             R1, R9
21D508:  BLX             R6
21D50A:  CMP             R0, #0
21D50C:  MOV             R0, R4
21D50E:  BNE             loc_21D4FE
21D510:  MOV             R0, R8
21D512:  POP.W           {R8,R9,R11}
21D516:  POP             {R4-R7,PC}
