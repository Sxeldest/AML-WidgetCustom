; =========================================================
; Game Engine Function: sub_12B3C0
; Address            : 0x12B3C0 - 0x12B3F0
; =========================================================

12B3C0:  PUSH            {R4-R7,LR}
12B3C2:  ADD             R7, SP, #0xC
12B3C4:  PUSH.W          {R11}
12B3C8:  MOV             R4, R0
12B3CA:  LDR             R0, [R0,#0x1C]
12B3CC:  CBZ             R0, loc_12B3EA
12B3CE:  LDR             R0, =(off_234B40 - 0x12B3D4)
12B3D0:  ADD             R0, PC; off_234B40
12B3D2:  LDR             R6, [R0]; off_2636C8
12B3D4:  BL              sub_167F4C
12B3D8:  MOV             R5, R0
12B3DA:  LDR             R0, [R4,#0x1C]
12B3DC:  LDR             R1, [R6]
12B3DE:  BLX             R1
12B3E0:  LDR.W           R0, [R5,#0x8C]
12B3E4:  MOVS            R1, #0
12B3E6:  STR             R1, [R4,#0x1C]
12B3E8:  STR             R1, [R0,#8]
12B3EA:  POP.W           {R11}
12B3EE:  POP             {R4-R7,PC}
