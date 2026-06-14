; =========================================================
; Game Engine Function: sub_10A1C0
; Address            : 0x10A1C0 - 0x10A1E0
; =========================================================

10A1C0:  PUSH            {R7,LR}
10A1C2:  MOV             R7, SP
10A1C4:  LDR             R1, [R0,#0xC]
10A1C6:  CBZ             R1, loc_10A1DC
10A1C8:  LDR             R2, =(unk_B3E72 - 0x10A1D0)
10A1CA:  LDR             R1, [R0,#8]
10A1CC:  ADD             R2, PC; unk_B3E72
10A1CE:  MOV             R0, R2
10A1D0:  BL              sub_107188
10A1D4:  CMP             R0, #0
10A1D6:  IT NE
10A1D8:  MOVNE           R0, #1
10A1DA:  POP             {R7,PC}
10A1DC:  MOVS            R0, #0
10A1DE:  POP             {R7,PC}
