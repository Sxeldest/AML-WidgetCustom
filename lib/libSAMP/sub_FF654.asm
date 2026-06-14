; =========================================================
; Game Engine Function: sub_FF654
; Address            : 0xFF654 - 0xFF67A
; =========================================================

FF654:  PUSH            {R4,R6,R7,LR}
FF656:  ADD             R7, SP, #8
FF658:  MOV             R4, R0
FF65A:  LDR             R0, =(off_234970 - 0xFF660)
FF65C:  ADD             R0, PC; off_234970
FF65E:  LDR             R0, [R0]; dword_23DEF0
FF660:  LDR             R0, [R0]
FF662:  CBZ             R0, loc_FF66C
FF664:  LDR             R0, [R0,#4]
FF666:  CBZ             R0, loc_FF66C
FF668:  BL              loc_F8864
FF66C:  LDR             R0, =(off_25B1B0 - 0xFF672)
FF66E:  ADD             R0, PC; off_25B1B0
FF670:  LDR             R1, [R0]
FF672:  MOV             R0, R4
FF674:  POP.W           {R4,R6,R7,LR}
FF678:  BX              R1
