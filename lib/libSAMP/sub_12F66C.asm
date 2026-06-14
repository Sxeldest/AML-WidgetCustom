; =========================================================
; Game Engine Function: sub_12F66C
; Address            : 0x12F66C - 0x12F6D2
; =========================================================

12F66C:  PUSH            {R4-R7,LR}
12F66E:  ADD             R7, SP, #0xC
12F670:  PUSH.W          {R11}
12F674:  LDR             R6, [R0,#0x64]
12F676:  MOV             R4, R0
12F678:  CBZ             R6, loc_12F6A8
12F67A:  LDRB.W          R0, [R6,#0x50]
12F67E:  CMP             R0, #1
12F680:  BEQ             loc_12F68C
12F682:  LDR             R0, [R6]
12F684:  MOVS            R1, #1
12F686:  LDR             R2, [R0,#0x24]
12F688:  MOV             R0, R6
12F68A:  BLX             R2
12F68C:  LDR             R5, [R4,#0x5C]
12F68E:  MOVS            R0, #1
12F690:  STRB.W          R0, [R6,#0x50]
12F694:  LDRB.W          R0, [R5,#0x50]
12F698:  CBZ             R0, loc_12F6B6
12F69A:  LDR             R0, [R5]
12F69C:  MOVS            R1, #0
12F69E:  LDR             R2, [R0,#0x24]
12F6A0:  MOV             R0, R5
12F6A2:  BLX             R2
12F6A4:  LDR             R0, [R4,#0x5C]
12F6A6:  B               loc_12F6B8
12F6A8:  MOV             R0, R4
12F6AA:  POP.W           {R11}
12F6AE:  POP.W           {R4-R7,LR}
12F6B2:  B.W             sub_12F5E0
12F6B6:  MOV             R0, R5
12F6B8:  ADD.W           R6, R4, #0x60 ; '`'
12F6BC:  MOVS            R1, #0
12F6BE:  STRB.W          R1, [R5,#0x50]
12F6C2:  LDM             R6, {R2,R3,R6}
12F6C4:  STRD.W          R3, R6, [R4,#0x5C]
12F6C8:  STRD.W          R0, R2, [R4,#0x64]
12F6CC:  POP.W           {R11}
12F6D0:  POP             {R4-R7,PC}
