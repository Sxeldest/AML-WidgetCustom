; =========================================================
; Game Engine Function: sub_15E74C
; Address            : 0x15E74C - 0x15E78E
; =========================================================

15E74C:  PUSH            {R4,R6,R7,LR}
15E74E:  ADD             R7, SP, #8
15E750:  SUB             SP, SP, #8
15E752:  MOV             R4, R1
15E754:  LDR             R1, [R1,#4]
15E756:  LDR             R2, [R4,#8]
15E758:  STR             R0, [SP,#0x10+var_C]
15E75A:  CMP             R1, R2
15E75C:  BEQ             loc_15E766
15E75E:  STR.W           R0, [R1],#4
15E762:  STR             R1, [R4,#4]
15E764:  B               loc_15E76E
15E766:  ADD             R1, SP, #0x10+var_C
15E768:  MOV             R0, R4
15E76A:  BL              sub_15EC68
15E76E:  LDR             R0, =(off_23494C - 0x15E77E)
15E770:  MOVW            R3, #:lower16:(loc_1D8648+1)
15E774:  LDR             R1, =(sub_15E74C+1 - 0x15E780)
15E776:  MOVT            R3, #:upper16:(loc_1D8648+1)
15E77A:  ADD             R0, PC; off_23494C
15E77C:  ADD             R1, PC; sub_15E74C
15E77E:  LDR             R0, [R0]; dword_23DF24
15E780:  LDR             R2, [R0]
15E782:  LDR             R0, [SP,#0x10+var_C]
15E784:  ADD             R3, R2
15E786:  MOV             R2, R4
15E788:  BLX             R3
15E78A:  ADD             SP, SP, #8
15E78C:  POP             {R4,R6,R7,PC}
