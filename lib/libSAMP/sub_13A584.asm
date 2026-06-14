; =========================================================
; Game Engine Function: sub_13A584
; Address            : 0x13A584 - 0x13A5C2
; =========================================================

13A584:  PUSH            {R4,R5,R7,LR}
13A586:  ADD             R7, SP, #8
13A588:  MOV             R4, R0
13A58A:  LDR             R0, =(off_2349A8 - 0x13A590)
13A58C:  ADD             R0, PC; off_2349A8
13A58E:  LDR             R5, [R0]; dword_381BF4
13A590:  LDR             R0, [R5]
13A592:  LDRB.W          R1, [R0,#0x84]
13A596:  CBNZ            R1, loc_13A5A2
13A598:  MOVS            R1, #0
13A59A:  BL              sub_17C1DA
13A59E:  CBZ             R0, loc_13A5AA
13A5A0:  LDR             R0, [R5]
13A5A2:  LDRSH.W         R1, [R4,#0x74]
13A5A6:  BL              sub_17C604
13A5AA:  LDRB.W          R0, [R4,#0x50]
13A5AE:  CBZ             R0, loc_13A5BA
13A5B0:  LDR             R0, [R4]
13A5B2:  MOVS            R1, #0
13A5B4:  LDR             R2, [R0,#0x24]
13A5B6:  MOV             R0, R4
13A5B8:  BLX             R2
13A5BA:  MOVS            R0, #0
13A5BC:  STRB.W          R0, [R4,#0x50]
13A5C0:  POP             {R4,R5,R7,PC}
