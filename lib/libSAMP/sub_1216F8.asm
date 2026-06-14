; =========================================================
; Game Engine Function: sub_1216F8
; Address            : 0x1216F8 - 0x121714
; =========================================================

1216F8:  PUSH            {R4,R5,R7,LR}
1216FA:  ADD             R7, SP, #8
1216FC:  MOV             R4, R0
1216FE:  LDR             R0, [R0,#4]
121700:  CBZ             R0, loc_121704
121702:  POP             {R4,R5,R7,PC}
121704:  MOVS            R0, #8; unsigned int
121706:  BLX             j__Znwj; operator new(uint)
12170A:  MOV             R5, R0
12170C:  BL              sub_1212A0
121710:  STR             R5, [R4,#4]
121712:  POP             {R4,R5,R7,PC}
