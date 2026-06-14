; =========================================================
; Game Engine Function: sub_7D794
; Address            : 0x7D794 - 0x7D7C6
; =========================================================

7D794:  PUSH            {R4,R6,R7,LR}
7D796:  ADD             R7, SP, #8
7D798:  MOV             R4, R1
7D79A:  BL              sub_7C360
7D79E:  LDR             R1, =(off_114CA0 - 0x7D7A6)
7D7A0:  LDR             R2, =(_ZTV6Layout - 0x7D7AA); `vtable for'Layout ...
7D7A2:  ADD             R1, PC; off_114CA0
7D7A4:  STR             R4, [R0,#0x54]
7D7A6:  ADD             R2, PC; `vtable for'Layout
7D7A8:  LDR             R1, [R1]; unk_116D60
7D7AA:  VLDR            S0, [R1]
7D7AE:  ADD.W           R1, R2, #8
7D7B2:  STR             R1, [R0]
7D7B4:  ADD.W           R1, R0, #0x58 ; 'X'
7D7B8:  VDUP.32         Q8, D0[0]
7D7BC:  VST1.32         {D16-D17}, [R1]!
7D7C0:  VSTR            S0, [R1]
7D7C4:  POP             {R4,R6,R7,PC}
