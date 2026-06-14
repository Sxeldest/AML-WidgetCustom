; =========================================================
; Game Engine Function: sub_115290
; Address            : 0x115290 - 0x1152E2
; =========================================================

115290:  PUSH            {R4-R7,LR}
115292:  ADD             R7, SP, #0xC
115294:  PUSH.W          {R11}
115298:  LDR             R4, [R0,#0x44]
11529A:  MOV             R5, R0
11529C:  MOV             R6, R1
11529E:  MOV             R0, R1
1152A0:  MOV             R1, R2
1152A2:  MOV             R2, R3
1152A4:  BLX             R4
1152A6:  MOV             R4, R0
1152A8:  MOV             R0, R6
1152AA:  BL              sub_163C14
1152AE:  CBZ             R0, loc_1152CC
1152B0:  MOV             R6, R0
1152B2:  LDRB.W          R0, [R5,#0x55]
1152B6:  STR             R6, [R5,#0x50]
1152B8:  CBZ             R0, loc_1152DA
1152BA:  LDR             R1, =(aSquaretick - 0x1152C4); "SquareTick" ...
1152BC:  ADD.W           R0, R6, #8
1152C0:  ADD             R1, PC; "SquareTick"
1152C2:  BL              sub_163C24
1152C6:  ADD.W           R0, R6, #0x20 ; ' '
1152CA:  B               loc_1152D6
1152CC:  LDRB.W          R0, [R5,#0x55]
1152D0:  CBZ             R0, loc_1152DA
1152D2:  ADD.W           R0, R5, #0x54 ; 'T'
1152D6:  MOVS            R1, #1
1152D8:  STRB            R1, [R0]
1152DA:  MOV             R0, R4
1152DC:  POP.W           {R11}
1152E0:  POP             {R4-R7,PC}
