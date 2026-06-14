; =========================================================
; Game Engine Function: sub_17C33C
; Address            : 0x17C33C - 0x17C36E
; =========================================================

17C33C:  PUSH            {R4-R7,LR}
17C33E:  ADD             R7, SP, #0xC
17C340:  PUSH.W          {R11}
17C344:  MOV             R4, R0
17C346:  MOVS            R5, #0
17C348:  MOVS            R6, #0
17C34A:  ADDS            R0, R4, R6
17C34C:  LDRB.W          R1, [R0,#0x4C]
17C350:  CBZ             R1, loc_17C362
17C352:  STRB.W          R5, [R0,#0x4C]
17C356:  UXTB            R1, R6
17C358:  MOV             R0, R4
17C35A:  MOVS            R2, #1
17C35C:  MOVS            R3, #0
17C35E:  BL              sub_17C2A4
17C362:  ADDS            R6, #1
17C364:  CMP             R6, #0x1C
17C366:  BNE             loc_17C34A
17C368:  POP.W           {R11}
17C36C:  POP             {R4-R7,PC}
