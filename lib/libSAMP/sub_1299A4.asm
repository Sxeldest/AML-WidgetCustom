; =========================================================
; Game Engine Function: sub_1299A4
; Address            : 0x1299A4 - 0x1299C2
; =========================================================

1299A4:  PUSH            {R7,LR}
1299A6:  MOV             R7, SP
1299A8:  BL              sub_1299C8
1299AC:  LDR             R0, =(unk_314168 - 0x1299B2)
1299AE:  ADD             R0, PC; unk_314168
1299B0:  LDR             R0, [R0,#(dword_314178 - 0x314168)]
1299B2:  CBZ             R0, loc_1299BE
1299B4:  LDR             R1, [R0]
1299B6:  LDR             R1, [R1,#0x18]
1299B8:  POP.W           {R7,LR}
1299BC:  BX              R1
1299BE:  BL              sub_DC92C
