; =========================================================
; Game Engine Function: sub_108874
; Address            : 0x108874 - 0x1088BC
; =========================================================

108874:  CMP             R1, #1
108878:  BCC             loc_1088AC
10887C:  BXEQ            LR
108880:  CMP             R0, R1
108884:  MOVCC           R0, #0
108888:  BXCC            LR
10888C:  CLZ             R12, R0
108890:  CLZ             R3, R1
108894:  SUB             R3, R3, R12
108898:  ADR             R12, sub_108A30
10889C:  SUB             R12, R12, R3,LSL#2
1088A0:  SUB             R12, R12, R3,LSL#3
1088A4:  MOV             R3, #0
1088A8:  BX              R12
1088AC:  MOVS            R0, #0
1088B0:  PUSH            {R7,LR}
1088B4:  BL              nullsub_1
1088B8:  POP             {R7,PC}
