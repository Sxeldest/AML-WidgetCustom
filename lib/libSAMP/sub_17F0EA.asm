; =========================================================
; Game Engine Function: sub_17F0EA
; Address            : 0x17F0EA - 0x17F10E
; =========================================================

17F0EA:  PUSH            {R4,R5,R7,LR}
17F0EC:  ADD             R7, SP, #8
17F0EE:  MOV             R4, R0
17F0F0:  MOVW            R5, #0x25A0
17F0F4:  BL              sub_17E2E4
17F0F8:  LDR             R1, [R4,R5]
17F0FA:  MOVW            R2, #0x2598
17F0FE:  ADD             R2, R4
17F100:  MOVW            R3, #0x259C
17F104:  CMP             R0, R1
17F106:  IT HI
17F108:  ADDHI           R2, R4, R3
17F10A:  LDR             R0, [R2]
17F10C:  POP             {R4,R5,R7,PC}
