; =========================================================
; Game Engine Function: sub_11F030
; Address            : 0x11F030 - 0x11F04E
; =========================================================

11F030:  PUSH            {R7,LR}
11F032:  MOV             R7, SP
11F034:  BL              sub_11F054
11F038:  LDR             R0, =(unk_263848 - 0x11F03E)
11F03A:  ADD             R0, PC; unk_263848
11F03C:  LDR             R0, [R0,#(dword_263858 - 0x263848)]
11F03E:  CBZ             R0, loc_11F04A
11F040:  LDR             R1, [R0]
11F042:  LDR             R1, [R1,#0x18]
11F044:  POP.W           {R7,LR}
11F048:  BX              R1
11F04A:  BL              sub_DC92C
