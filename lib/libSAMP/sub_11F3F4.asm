; =========================================================
; Game Engine Function: sub_11F3F4
; Address            : 0x11F3F4 - 0x11F412
; =========================================================

11F3F4:  PUSH            {R7,LR}
11F3F6:  MOV             R7, SP
11F3F8:  BL              sub_11F418
11F3FC:  LDR             R0, =(unk_263888 - 0x11F402)
11F3FE:  ADD             R0, PC; unk_263888
11F400:  LDR             R0, [R0,#(dword_263898 - 0x263888)]
11F402:  CBZ             R0, loc_11F40E
11F404:  LDR             R1, [R0]
11F406:  LDR             R1, [R1,#0x18]
11F408:  POP.W           {R7,LR}
11F40C:  BX              R1
11F40E:  BL              sub_DC92C
