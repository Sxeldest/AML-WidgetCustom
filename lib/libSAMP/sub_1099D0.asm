; =========================================================
; Game Engine Function: sub_1099D0
; Address            : 0x1099D0 - 0x1099F8
; =========================================================

1099D0:  PUSH            {R4,R6,R7,LR}
1099D2:  ADD             R7, SP, #8
1099D4:  MOV             R4, R0
1099D6:  LDR             R0, [R0,#0x10]
1099D8:  CBZ             R0, locret_1099F6
1099DA:  LDR             R0, [R4,#8]
1099DC:  CBZ             R0, locret_1099F6
1099DE:  BL              sub_108354
1099E2:  CBZ             R0, locret_1099F6
1099E4:  LDR             R1, [R4,#0x10]
1099E6:  LDR             R0, [R1,#0xC]
1099E8:  CBZ             R0, locret_1099F6
1099EA:  LDR             R0, =(unk_B3DFA - 0x1099F4)
1099EC:  LDR             R2, [R4,#8]
1099EE:  LDR             R1, [R1,#8]
1099F0:  ADD             R0, PC; unk_B3DFA
1099F2:  BL              sub_107188
1099F6:  POP             {R4,R6,R7,PC}
