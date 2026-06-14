; =========================================================
; Game Engine Function: sub_13D71C
; Address            : 0x13D71C - 0x13D74E
; =========================================================

13D71C:  PUSH            {R4,R6,R7,LR}
13D71E:  ADD             R7, SP, #8
13D720:  MOV             R4, R1
13D722:  BL              sub_12BC78
13D726:  LDR             R1, =(off_234B7C - 0x13D72E)
13D728:  LDR             R2, =(_ZTV6Layout - 0x13D732); `vtable for'Layout ...
13D72A:  ADD             R1, PC; off_234B7C
13D72C:  STR             R4, [R0,#0x54]
13D72E:  ADD             R2, PC; `vtable for'Layout
13D730:  LDR             R1, [R1]; dword_238EC8
13D732:  VLDR            S0, [R1]
13D736:  ADD.W           R1, R2, #8
13D73A:  STR             R1, [R0]
13D73C:  ADD.W           R1, R0, #0x58 ; 'X'
13D740:  VDUP.32         Q8, D0[0]
13D744:  VST1.32         {D16-D17}, [R1]!
13D748:  VSTR            S0, [R1]
13D74C:  POP             {R4,R6,R7,PC}
