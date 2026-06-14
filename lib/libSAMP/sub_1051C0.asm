; =========================================================
; Game Engine Function: sub_1051C0
; Address            : 0x1051C0 - 0x1051F8
; =========================================================

1051C0:  PUSH            {R4,R5,R7,LR}
1051C2:  ADD             R7, SP, #8
1051C4:  SUB             SP, SP, #0x18
1051C6:  LDR             R1, [R0,#0x68]
1051C8:  CBZ             R1, loc_1051F4
1051CA:  VMOV.I32        D16, #0
1051CE:  MOV             R4, R0
1051D0:  LDR             R0, =(unk_B369A - 0x1051E0)
1051D2:  MOVS            R5, #0
1051D4:  STRD.W          R5, R5, [SP,#0x20+var_20]
1051D8:  VMOV            R2, R3, D16
1051DC:  ADD             R0, PC; unk_B369A
1051DE:  STRD.W          R5, R5, [SP,#0x20+var_18]
1051E2:  STR             R5, [SP,#0x20+var_10]
1051E4:  BL              sub_107188
1051E8:  LDR             R0, =(unk_B3816 - 0x1051F0)
1051EA:  LDR             R1, [R4,#0x68]
1051EC:  ADD             R0, PC; unk_B3816
1051EE:  BL              sub_107188
1051F2:  STR             R5, [R4,#0x68]
1051F4:  ADD             SP, SP, #0x18
1051F6:  POP             {R4,R5,R7,PC}
