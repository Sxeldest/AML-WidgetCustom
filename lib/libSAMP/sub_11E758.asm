; =========================================================
; Game Engine Function: sub_11E758
; Address            : 0x11E758 - 0x11E77E
; =========================================================

11E758:  PUSH            {R4,R6,R7,LR}
11E75A:  ADD             R7, SP, #8
11E75C:  MOV             R4, R0
11E75E:  LDR             R0, =(off_23494C - 0x11E764)
11E760:  ADD             R0, PC; off_23494C
11E762:  LDR             R0, [R0]; dword_23DF24
11E764:  LDR             R0, [R0]
11E766:  LDR             R1, =(sub_11E78C+1 - 0x11E772)
11E768:  LDR             R2, =(off_263828 - 0x11E778)
11E76A:  ADD.W           R0, R0, #0x670000
11E76E:  ADD             R1, PC; sub_11E78C
11E770:  ADD.W           R0, R0, #0x2880
11E774:  ADD             R2, PC; off_263828
11E776:  BL              sub_164196
11E77A:  MOV             R0, R4
11E77C:  POP             {R4,R6,R7,PC}
