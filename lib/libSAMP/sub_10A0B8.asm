; =========================================================
; Game Engine Function: sub_10A0B8
; Address            : 0x10A0B8 - 0x10A0D0
; =========================================================

10A0B8:  PUSH            {R7,LR}
10A0BA:  MOV             R7, SP
10A0BC:  LDR             R1, [R0,#0x10]
10A0BE:  CBZ             R1, locret_10A0CE
10A0C0:  LDR             R3, =(unk_B3E36 - 0x10A0C8)
10A0C2:  LDR             R2, [R0,#8]
10A0C4:  ADD             R3, PC; unk_B3E36
10A0C6:  LDR             R1, [R1,#8]
10A0C8:  MOV             R0, R3
10A0CA:  BL              sub_107188
10A0CE:  POP             {R7,PC}
