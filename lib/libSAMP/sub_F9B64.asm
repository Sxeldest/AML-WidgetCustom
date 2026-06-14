; =========================================================
; Game Engine Function: sub_F9B64
; Address            : 0xF9B64 - 0xF9B7E
; =========================================================

F9B64:  LDR             R0, =(off_23494C - 0xF9B72)
F9B66:  MOV             R1, #0x96B514
F9B6E:  ADD             R0, PC; off_23494C
F9B70:  LDR             R0, [R0]; dword_23DF24
F9B72:  LDR             R0, [R0]
F9B74:  LDRB            R0, [R0,R1]
F9B76:  CMP             R0, #0
F9B78:  IT NE
F9B7A:  MOVNE           R0, #1
F9B7C:  BX              LR
