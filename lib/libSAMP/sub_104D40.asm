; =========================================================
; Game Engine Function: sub_104D40
; Address            : 0x104D40 - 0x104D5A
; =========================================================

104D40:  PUSH            {R7,LR}
104D42:  MOV             R7, SP
104D44:  MOV             R2, R1
104D46:  LDR             R1, [R0,#0x5C]
104D48:  CBZ             R1, locret_104D58
104D4A:  LDR             R3, =(unk_B37B2 - 0x104D52)
104D4C:  LDR             R1, [R0,#8]
104D4E:  ADD             R3, PC; unk_B37B2
104D50:  MOV             R0, R3
104D52:  MOVS            R3, #6
104D54:  BL              sub_107188
104D58:  POP             {R7,PC}
