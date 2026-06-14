; =========================================================
; Game Engine Function: sub_138994
; Address            : 0x138994 - 0x1389AC
; =========================================================

138994:  PUSH            {R7,LR}
138996:  MOV             R7, SP
138998:  BL              sub_F0B30
13899C:  LDR             R1, =(dword_3141F8 - 0x1389A4)
13899E:  LDR             R2, =(byte_3141F4 - 0x1389A6)
1389A0:  ADD             R1, PC; dword_3141F8
1389A2:  ADD             R2, PC; byte_3141F4
1389A4:  STR             R0, [R1]
1389A6:  MOVS            R0, #1
1389A8:  STRB            R0, [R2]
1389AA:  POP             {R7,PC}
