; =========================================================
; Game Engine Function: sub_103798
; Address            : 0x103798 - 0x1037CA
; =========================================================

103798:  PUSH            {R4,R5,R7,LR}
10379A:  ADD             R7, SP, #8
10379C:  MOV             R4, R1
10379E:  LDR             R1, =(aTemplate - 0x1037A8); "template<" ...
1037A0:  MOV             R5, R0
1037A2:  MOV             R0, R4
1037A4:  ADD             R1, PC; "template<"
1037A6:  ADD.W           R2, R1, #9
1037AA:  BL              sub_FFB40
1037AE:  ADD.W           R0, R5, #0xC
1037B2:  MOV             R1, R4
1037B4:  BL              sub_1037E0
1037B8:  LDR             R1, =(aTypename_0 - 0x1037C0); "> typename " ...
1037BA:  MOV             R0, R4
1037BC:  ADD             R1, PC; "> typename "
1037BE:  ADD.W           R2, R1, #0xB
1037C2:  POP.W           {R4,R5,R7,LR}
1037C6:  B.W             sub_FFB40
