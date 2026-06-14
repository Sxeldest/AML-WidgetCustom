; =========================================================
; Game Engine Function: sub_10C974
; Address            : 0x10C974 - 0x10C992
; =========================================================

10C974:  PUSH            {R7,LR}
10C976:  MOV             R7, SP
10C978:  BL              sub_10CD1C
10C97C:  LDR             R0, =(unk_263208 - 0x10C982)
10C97E:  ADD             R0, PC; unk_263208
10C980:  LDR             R0, [R0,#(dword_263218 - 0x263208)]
10C982:  CBZ             R0, loc_10C98E
10C984:  LDR             R1, [R0]
10C986:  LDR             R1, [R1,#0x18]
10C988:  POP.W           {R7,LR}
10C98C:  BX              R1
10C98E:  BL              sub_DC92C
