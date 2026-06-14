; =========================================================
; Game Engine Function: sub_1357D0
; Address            : 0x1357D0 - 0x135804
; =========================================================

1357D0:  PUSH            {R4-R7,LR}
1357D2:  ADD             R7, SP, #0xC
1357D4:  PUSH.W          {R8}
1357D8:  LDR             R4, [R7,#arg_0]
1357DA:  MOV             R6, R0
1357DC:  LDR             R0, [R0,#0x6C]
1357DE:  MOV             R5, R2
1357E0:  MOV             R8, R3
1357E2:  MOV             R2, R4
1357E4:  BL              sub_135804
1357E8:  LDR             R0, [R6,#0x70]
1357EA:  MOV             R1, R5
1357EC:  MOV             R2, R4
1357EE:  BL              sub_135804
1357F2:  LDR             R0, [R6,#0x74]
1357F4:  MOV             R1, R8
1357F6:  MOV             R2, R4
1357F8:  POP.W           {R8}
1357FC:  POP.W           {R4-R7,LR}
135800:  B.W             sub_135804
