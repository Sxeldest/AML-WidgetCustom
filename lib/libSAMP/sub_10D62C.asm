; =========================================================
; Game Engine Function: sub_10D62C
; Address            : 0x10D62C - 0x10D662
; =========================================================

10D62C:  PUSH            {R4,R5,R7,LR}
10D62E:  ADD             R7, SP, #8
10D630:  MOV             R4, R0
10D632:  LDR             R0, [R0,#4]
10D634:  CBZ             R0, loc_10D638
10D636:  POP             {R4,R5,R7,PC}
10D638:  MOVS            R0, #1; unsigned int
10D63A:  BLX             j__Znwj; operator new(uint)
10D63E:  MOV             R5, R0
10D640:  LDR             R0, =(off_23494C - 0x10D64A)
10D642:  MOVW            R3, #0x957C
10D646:  ADD             R0, PC; off_23494C
10D648:  MOVT            R3, #0x95
10D64C:  LDR             R0, [R0]; dword_23DF24
10D64E:  LDR             R0, [R0]
10D650:  LDR             R1, =(sub_10D424+1 - 0x10D65A)
10D652:  LDR             R2, =(off_263254 - 0x10D65C)
10D654:  ADD             R0, R3
10D656:  ADD             R1, PC; sub_10D424
10D658:  ADD             R2, PC; off_263254
10D65A:  BL              sub_164222
10D65E:  STR             R5, [R4,#4]
10D660:  POP             {R4,R5,R7,PC}
