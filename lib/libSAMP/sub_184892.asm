; =========================================================
; Game Engine Function: sub_184892
; Address            : 0x184892 - 0x1848C6
; =========================================================

184892:  PUSH            {R4-R7,LR}
184894:  ADD             R7, SP, #0xC
184896:  PUSH.W          {R11}
18489A:  MOV             R5, R0
18489C:  LDRD.W          R4, R0, [R0,#4]
1848A0:  LDR             R1, [R4,#8]
1848A2:  CMP             R1, R0
1848A4:  BEQ             loc_1848AC
1848A6:  LDR             R0, [R4,#8]
1848A8:  LDRB            R0, [R0,#4]
1848AA:  CBZ             R0, loc_1848BA
1848AC:  MOVS            R0, #0xC; unsigned int
1848AE:  LDR             R6, [R4,#8]
1848B0:  BLX             j__Znwj; operator new(uint)
1848B4:  STR             R0, [R4,#8]
1848B6:  LDR             R0, [R4,#8]
1848B8:  STR             R6, [R0,#8]
1848BA:  LDR             R0, [R4,#8]
1848BC:  STR             R0, [R5,#4]
1848BE:  MOV             R0, R4
1848C0:  POP.W           {R11}
1848C4:  POP             {R4-R7,PC}
