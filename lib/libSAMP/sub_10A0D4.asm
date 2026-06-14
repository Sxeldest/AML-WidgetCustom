; =========================================================
; Game Engine Function: sub_10A0D4
; Address            : 0x10A0D4 - 0x10A0F6
; =========================================================

10A0D4:  PUSH            {R4,R5,R7,LR}
10A0D6:  ADD             R7, SP, #8
10A0D8:  MOV             R5, R0
10A0DA:  LDR             R0, [R0,#0xC]
10A0DC:  CBZ             R0, locret_10A0F4
10A0DE:  LDR             R0, [R5,#8]
10A0E0:  MOV             R4, R1
10A0E2:  BL              sub_108354
10A0E6:  CBZ             R0, locret_10A0F4
10A0E8:  LDR             R0, =(unk_B3E4A - 0x10A0F2)
10A0EA:  MOV             R2, R4
10A0EC:  LDR             R1, [R5,#8]
10A0EE:  ADD             R0, PC; unk_B3E4A
10A0F0:  BL              sub_107188
10A0F4:  POP             {R4,R5,R7,PC}
