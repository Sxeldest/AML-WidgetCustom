; =========================================================
; Game Engine Function: _ZN13CCarEnterExit16CarHasDoorToOpenERK8CVehiclei
; Address            : 0x5086EE - 0x50871A
; =========================================================

5086EE:  PUSH            {R4,R5,R7,LR}
5086F0:  ADD             R7, SP, #8
5086F2:  MOV             R5, R0
5086F4:  MOV             R4, R1
5086F6:  LDR             R0, [R5]
5086F8:  LDR.W           R2, [R0,#0x9C]
5086FC:  MOV             R0, R5
5086FE:  BLX             R2
508700:  CMP             R0, #0
508702:  ITT NE
508704:  MOVNE           R0, #0
508706:  POPNE           {R4,R5,R7,PC}
508708:  LDR             R0, [R5]
50870A:  MOV             R1, R4
50870C:  LDR.W           R2, [R0,#0x94]
508710:  MOV             R0, R5
508712:  BLX             R2
508714:  EOR.W           R0, R0, #1
508718:  POP             {R4,R5,R7,PC}
