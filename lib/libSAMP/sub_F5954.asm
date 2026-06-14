; =========================================================
; Game Engine Function: sub_F5954
; Address            : 0xF5954 - 0xF5972
; =========================================================

F5954:  PUSH            {R7,LR}
F5956:  MOV             R7, SP
F5958:  BL              sub_F5978
F595C:  LDR             R0, =(unk_2400A0 - 0xF5962)
F595E:  ADD             R0, PC; unk_2400A0
F5960:  LDR             R0, [R0,#(dword_2400B0 - 0x2400A0)]
F5962:  CBZ             R0, loc_F596E
F5964:  LDR             R1, [R0]
F5966:  LDR             R1, [R1,#0x18]
F5968:  POP.W           {R7,LR}
F596C:  BX              R1
F596E:  BL              sub_DC92C
